#include "funciones.h"

/**
 * Esta funcion va a leer las lineas de un archivo, y devuelve un vector de strings.
*/
char **read_from_file(char *filename)
{
	return 0;
}

/**
 * Esta funcion recibe el vector de strings, y lo escribe en consola.
*/
void write_from_file(char **file_data)
{
	if (file_data == NULL) {
		printf("Error: No se pudo leer el archivo.\n");
		return;
	}

	for (int i = 0; i < 5; i++) {
		printf("%s", file_data[i]);
        free(file_data[i]);
	}
    free(file_data);

	return;
}