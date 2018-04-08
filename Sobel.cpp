

#include "Sobel.h"
#include <string.h>
#include <malloc.h>
#include <stdio.h>
#include <stdlib.h>

#define ABS(x)          ((x>0)? x : -x)

typedef union {
	uint8_t pix[4];
	unsigned full;
} OneToFourPixels;


static inline uint8_t getVal(int index, int xDiff, int yDiff, uint8_t * Y)
{
	return Y[index + (yDiff * IMG_WIDTH) + xDiff];
};

uint8_t sobel_operator(const int fullIndex, uint8_t * image)
{
#pragma HLS inline			// Inliner la fonction lui permet d'�tre "copi�e-coll�e" l� o� elle est appell�e
							// et ainsi faciliter le pipelinage de la boucle principale
	/* � compl�ter en important votre code du lab 3.
	 * � noter que la fonction peut avoir 3 signatures diff�rentes, selon vos diff�rentes modifications:
	 * uint8_t sobel_operator(const int fullIndex, uint8_t * image)
	 * uint8_t sobel_operator(const int fullIndex, uint8_t image[IMG_HEIGHT * IMG_WIDTH])
	 * uint8_t sobel_operator(const int col, const int row, uint8_t image[IMG_HEIGHT][IMG_WIDTH])
	 *
	 * Les deux premi�res sont assez �quivalentes, mais la derni�re permet d'acc�der � l'image comme un
	 * tableau 2D. Par contre, un tableau 2D doit alors lui �tre pass�, ce qui n'est pas �vident consid�rant
	 * que les entr�es de la fonction sobel_filtrer() sont 1D. Cependant, si pour une raison ou une autre
	 * un buffer-cache interm�diaire �tait utilis�, celui-ci pourrait �tre 2D...
	 */
	int x_weight = 0;
	int y_weight = 0;

	unsigned edge_weight;
	uint8_t edge_val;

	const char x_op[3][3] = {	{ -1,0,1 },
								{ -2,0,2 },
								{ -1,0,1 } };

	const char y_op[3][3] = {	{ 1,2,1 },
								{ 0,0,0 },
								{ -1,-2,-1 } };

	//Compute approximation of the gradients in the X-Y direction
	for (int i = 0; i < 3; i++) {
		printf("%d",0);
		for (int j = 0; j < 3; j++) {
		// X direction gradient
		x_weight = x_weight + (getVal(fullIndex, i - 1, j - 1, image) * x_op[i][j]);

		// Y direction gradient
		y_weight = y_weight + (getVal(fullIndex, i - 1, j - 1, image) * y_op[i][j]);
		printf("%d",1);
		}
	}

	edge_weight = ABS(x_weight) + ABS(y_weight);

	edge_val = (255 - (uint8_t)(edge_weight));

	//Edge thresholding
	if (edge_val > 200)
		edge_val = 255;
	else if (edge_val < 100)
		edge_val = 0;

	return edge_val;
}


void sobel_filter(uint8_t inter_pix[IMG_WIDTH * IMG_HEIGHT], unsigned out_pix[IMG_WIDTH * IMG_HEIGHT])
{
	/* On demande � HLS de nous synth�tiser des ma�tres AXI que l'on connectera � la m�moire principale.
	 * Ainsi, le CPU n'a pas besoin de transf�rer l'image au filtre: c'est le filtre qui va chercher l'image
	 * dans la m�moire principale (DDR de la carte) et �crit le r�sultat dans cette m�me m�moire.
	 * Un esclave AXI-Lite est aussi cr��, accessible par le CPU, pour informer le filtre des adresses
	 * auxquelles il doit aller chercher et �crire l'image, lui dire de d�marrer ou d'arr�ter, etc.
	 */

	 	/*� remplacer par votre fonction *apr�s* avoir r�pondu aux questions initiales
		IMG: for (int i = 0; i < IMG_WIDTH * IMG_HEIGHT; ++i) {
				uint8_t val = inter_pix[i];
				OneToFourPixels fourWide;
		OneTo4:	for (int j = 0; j < 4; ++j)
					fourWide.pix[j] = val;
				out_pix[i] = fourWide.full;*/
	// ***** LES 3 LIGNES SUIVANTES DOIVENT �TRE D�COMMENT�ES UNE FOIS LES QUESTIONS INITIALES COMPL�T�ES!! ******

#pragma HLS INTERFACE m_axi port=inter_pix offset=slave
#pragma HLS INTERFACE m_axi port=out_pix offset=slave
#pragma HLS INTERFACE s_axilite port=return

		unsigned int pixel, data;

		while (true) {
			int index = 0;

			for (int i = 0; i < IMG_HEIGHT; i++) {
				for (int j = 0; j < IMG_WIDTH; j += 4) {
					index = i * IMG_WIDTH + j;
					pixel = inter_pix[8+index];
					inter_pix[index] = pixel & 0xFF;
					inter_pix[index + 1] = (pixel >> 8) & 0xFF;
					inter_pix[index + 2] = (pixel >> 16) & 0xFF;
					inter_pix[index + 3] = pixel >> 24;
					printf("allo");
				}
			}
			for (int i = 0; i < IMG_HEIGHT; i++) {
				for (int j = 0; j < IMG_WIDTH; j += 4) {
					index = i * IMG_WIDTH + j;
					if (i == 0 || i == IMG_HEIGHT - 1) {
						out_pix[8 + index] = 0;
						printf("yo");
					}
					else if (j == 0 || j  == IMG_WIDTH - 1) {
						out_pix[8 + index] = 0;
						printf("ya");
					}
					else {
						out_pix[index] = sobel_operator(index, inter_pix);
						out_pix[index + 1] = sobel_operator(index + 1, inter_pix) ;
						out_pix[index + 2] = sobel_operator(index + 2, inter_pix) ;
						out_pix[index + 3] = sobel_operator(index + 3, inter_pix) ;
						data = (out_pix[index] << 24 | out_pix[index + 1] << 16| out_pix[index+ 2] << 8 | out_pix[index + 3]);
						out_pix[8 + index] = data;
						printf("bye");
					}
				}
			}
		}
}
