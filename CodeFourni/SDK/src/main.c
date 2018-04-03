#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include <inttypes.h>
#include <xil_cache.h>
#include <xparameters.h>
#include <xtime_l.h>
#include <ff.h>
#include "platform.h"
#include "hdmi/zed_hdmi_display.h"
//#include "Sobel.h"			//d�commentez lorsqu'il existera

void hdmiInit(zed_hdmi_display_t * hdmiConfig)
{
	hdmiConfig->uBaseAddr_IIC_HdmiOut = XPAR_ZED_HDMI_IIC_0_BASEADDR;
	hdmiConfig->uDeviceId_VTC_HdmioGenerator = XPAR_ZED_HDMI_DISPLAY_V_TC_0_DEVICE_ID;
	hdmiConfig->uDeviceId_VDMA_HdmiDisplay = XPAR_ZED_HDMI_DISPLAY_AXI_VDMA_0_DEVICE_ID;
	hdmiConfig->uBaseAddr_MEM_HdmiDisplay = XPAR_DDR_MEM_BASEADDR + 0x1E000000;		// Les derniers 32 Mo de la DDR sont r�serv�s pour l'HDMI
	hdmiConfig->uNumFrames_HdmiDisplay = XPAR_AXIVDMA_0_NUM_FSTORES;
	zed_hdmi_display_init(hdmiConfig);
}

// Exemple de fonction permettant d'envoyer votre vid�o lue
void show_video( zed_hdmi_display_t *pDemo, const uint8_t * frame, int frameSize)
{
	for (int i = 0; i < frameSize; ++i) {
		typedef union {
			uint8_t pix[4];
			unsigned full;
		} pix;
		_Static_assert(sizeof(pix) == 4, "");
		pix mypix = { .pix = { frame[i], frame[i], frame[i], frame[i] } };
		*(unsigned*)(pDemo->uBaseAddr_MEM_HdmiDisplay + i*4) = mypix.full;
	}

}

void doSobel(/* param�tres � passer ici */)
{
	XTime before, after;

	/* Configurez votre filtre ici */

	printf("Starting Sobel\n");
	XTime_GetTime(&before);

	// D�marrez votre filtre ici

	while(/*Attendez que votre filtre termine*/ true);

	XTime_GetTime(&after);

	double elapsed = (double)(after-before)/COUNTS_PER_SECOND;
	printf("Done in %fs\n", elapsed);
}

void doSobelSW(uint8_t * img_in, unsigned * img_out)
{
	XTime before, after;

	/* Configurez votre filtre ici */

	printf("Starting Sobel\n");
	XTime_GetTime(&before);

	// D�commentez une fois votre code import�
	//sobel_filter(img_in, img_out);

	XTime_GetTime(&after);

	double elapsed = (double)(after-before)/COUNTS_PER_SECOND;
	printf("Done in %fs\n", elapsed);
}

// D�monte le syst�me de fichiers.
static inline FRESULT f_umount()
{
	return f_mount(0, "", 0);
}

/**
 * @fn uint8_t * getFileContents(const char* fileName, FILINFO * fInfo)
 *
 * Retourne un pointeur vers le contenu complet du fichier au nom fileName,
 * ou NULL en cas d'erreur. Cette fonction s'assure de:
 * - Monter le syst�me de fichier et ouvrir le fichier.
 * - Lire le fichier dans un buffer de taille suffisante.
 * - Fermer le fichier puis d�monter le syst�me de fichiers.
 * - G�rer les erreurs, de la carte SD non pr�sente � l'erreur de lecture en
 *   passant par le fichier non pr�sent.
 *
 * @param[in] fileName	Le nom du fichier � ouvrir sur la carte SD
 * @param[out] fInfo	Une structure FILINFO retourn�e par FATFS, qui contient
 * 						notamment la taille du fichier lu.
 * @return				Le contenu du fichier, ou NULL
 *
 */
uint8_t * getFileContents(const char* fileName, FILINFO * fInfo)
{
	// � impl�menter
	return NULL;
}


int main()
{
	init_platform();

	zed_hdmi_display_t hdmiConfig;
	hdmiInit(&hdmiConfig);

	FILINFO fInfo = { 0 };
	uint8_t * data = getFileContents("a9.rgb", &fInfo);
	Xil_DCacheFlush();		// On flush la cache pour s'assurer que tout le fichier retourner est dans la DDR et non seulement dans la cache.

	// � compl�ter: Initialisation du filtre de Sobel mat�riel

	XTime_SetTime(0);

	while(1) {
		for (int i = 0; i < fInfo.fsize; i += 1920*1080) {
			show_video(&hdmiConfig, &data[i], 1920*1080);
			//doSobel( /* param�tres � compl�ter ici */);
		}
	}

	cleanup_platform();
	return 0;
}
