
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
#pragma HLS inline			// Inliner la fonction lui permet d'être "copiée-collée" là où elle est appellée
							// et ainsi faciliter le pipelinage de la boucle principale
	/* À compléter en important votre code du lab 3.
	 * À noter que la fonction peut avoir 3 signatures différentes, selon vos différentes modifications:
	 * uint8_t sobel_operator(const int fullIndex, uint8_t * image)
	 * uint8_t sobel_operator(const int fullIndex, uint8_t image[IMG_HEIGHT * IMG_WIDTH])
	 * uint8_t sobel_operator(const int col, const int row, uint8_t image[IMG_HEIGHT][IMG_WIDTH])
	 *
	 * Les deux premières sont assez équivalentes, mais la dernière permet d'accéder à l'image comme un
	 * tableau 2D. Par contre, un tableau 2D doit alors lui être passé, ce qui n'est pas évident considérant
	 * que les entrées de la fonction sobel_filtrer() sont 1D. Cependant, si pour une raison ou une autre
	 * un buffer-cache intermédiaire était utilisé, celui-ci pourrait être 2D...
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
		for (int j = 0; j < 3; j++) {
		// X direction gradient
		x_weight = x_weight + (getVal(fullIndex, i - 1, j - 1, image) * x_op[i][j]);

		// Y direction gradient
		y_weight = y_weight + (getVal(fullIndex, i - 1, j - 1, image) * y_op[i][j]);
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
	/* On demande à HLS de nous synthétiser des maîtres AXI que l'on connectera à la mémoire principale.
	 * Ainsi, le CPU n'a pas besoin de transférer l'image au filtre: c'est le filtre qui va chercher l'image
	 * dans la mémoire principale (DDR de la carte) et écrit le résultat dans cette même mémoire.
	 * Un esclave AXI-Lite est aussi créé, accessible par le CPU, pour informer le filtre des adresses
	 * auxquelles il doit aller chercher et écrire l'image, lui dire de démarrer ou d'arrêter, etc.
	 */

	 	/*À remplacer par votre fonction *après* avoir répondu aux questions initiales
		IMG: for (int i = 0; i < IMG_WIDTH * IMG_HEIGHT; ++i) {
				uint8_t val = inter_pix[i];
				OneToFourPixels fourWide;
		OneTo4:	for (int j = 0; j < 4; ++j)
					fourWide.pix[j] = val;
				out_pix[i] = fourWide.full;*/
	// ***** LES 3 LIGNES SUIVANTES DOIVENT ÊTRE DÉCOMMENTÉES UNE FOIS LES QUESTIONS INITIALES COMPLÉTÉES!! ******

#pragma HLS INTERFACE m_axi port=inter_pix offset=slave
#pragma HLS INTERFACE m_axi port=out_pix offset=slave
#pragma HLS INTERFACE s_axilite port=return
	unsigned int pixel, data;

		int index = 0;
		uint8_t val ;
		OneToFourPixels fourWide;

		for (int i = 0; i < IMG_HEIGHT; i++) {
			for (int j = 0; j < IMG_WIDTH; j += 4) {
				index = i * IMG_WIDTH + j;
				pixel = inter_pix[8+index];
				inter_pix[index] = pixel & 0xFF;
				inter_pix[index + 1] = (pixel >> 8) & 0xFF;
				inter_pix[index + 2] = (pixel >> 16) & 0xFF;
				inter_pix[index + 3] = pixel >> 24;
			}
		}
		for (int i = 0; i < IMG_HEIGHT; i++) {
			for (int j = 0; j < IMG_WIDTH; j += 4) {
				index = i * IMG_WIDTH + j;
				if (i == 0 || i == IMG_HEIGHT - 1) {
					out_pix[8 + index] = 0;
				}
				else if (j == 0 || j  == IMG_WIDTH - 1) {
					out_pix[8 +index] = 0;
				}
				else {
					OneToFourPixels fourWide;
					fourWide.pix[0] = sobel_operator(index, inter_pix) << 24;
					fourWide.pix[1] = sobel_operator(index + 1, inter_pix) << 16;
					fourWide.pix[2] = sobel_operator(index + 2, inter_pix) << 8;
					fourWide.pix[3] = sobel_operator(index + 3, inter_pix) ;
					out_pix[8 + index] = fourWide.full;
				}
			}
		}
	}
