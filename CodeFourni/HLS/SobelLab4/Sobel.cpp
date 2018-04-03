#include "Sobel.h"
#include <string.h>

#define ABS(x)          ((x>0)? x : -x)

typedef union {
	uint8_t pix[4];
	unsigned full;
} OneToFourPixels;


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
	return 0;
}


void sobel_filter(uint8_t inter_pix[IMG_WIDTH * IMG_HEIGHT], unsigned out_pix[IMG_WIDTH * IMG_HEIGHT])
{
	/* On demande à HLS de nous synthétiser des maîtres AXI que l'on connectera à la mémoire principale.
	 * Ainsi, le CPU n'a pas besoin de transférer l'image au filtre: c'est le filtre qui va chercher l'image
	 * dans la mémoire principale (DDR de la carte) et écrit le résultat dans cette même mémoire.
	 * Un esclave AXI-Lite est aussi créé, accessible par le CPU, pour informer le filtre des adresses
	 * auxquelles il doit aller chercher et écrire l'image, lui dire de démarrer ou d'arrêter, etc.
	 */
	// ***** LES 3 LIGNES SUIVANTES DOIVENT ÊTRE DÉCOMMENTÉES UNE FOIS LES QUESTIONS INITIALES COMPLÉTÉES!! ******
#pragma HLS INTERFACE m_axi port=inter_pix offset=slave
#pragma HLS INTERFACE m_axi port=out_pix offset=slave
#pragma HLS INTERFACE s_axilite port=return

	/*À remplacer par votre fonction *après* avoir répondu aux questions initiales
IMG: for (int i = 0; i < IMG_WIDTH * IMG_HEIGHT; ++i) {
		uint8_t val = inter_pix[i];
		OneToFourPixels fourWide;
OneTo4:	for (int j = 0; j < 4; ++j)
			fourWide.pix[j] = val;
		out_pix[i] = fourWide.full;*/
		1
	}
}
