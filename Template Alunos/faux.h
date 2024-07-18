#ifndef FAUX_H_
#define FAUX_H_

#include <stdint.h>
#include <stddef.h>
#include <sys/types.h>


//Merge auxiliar functions
void merge(int vetor[], size_t inicio, int valor, size_t fim);
void mergeSortRec(int vetor[], size_t tam);
void troca(int vetor[], int a, int b);

//QuickSort auxiliar functions
int particiona(int vetor[], int inicio, int fim);

#endif
