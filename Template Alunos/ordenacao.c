#include "ordenacao.h"

#include <string.h>

void getNome(char nome[]) {
    // substitua por seu nome
    strncpy(nome, "Danielys Mailin Davila  Vega", MAX_CHAR);
    // adicionada terminação manual para caso de overflow
    nome[MAX_CHAR - 1] = '\0';
}

// a função a seguir deve retornar o seu número de GRR
uint32_t getGRR() { return 20232351; }


void troca(int vetor[], int a, int b){
    int aux = vetor[a];
    vetor[a] = vetor[b];
    vetor[b] = aux;
}

void merge(int vetor[], size_t inicio, int valor, size_t fim){
    size_t k = 0;
    size_t i = inicio;
    size_t j = valor + 1;

    int *u = (int *)malloc((fim - inicio + 1) * sizeof(int));
    while(k <= fim - inicio){
    	if(j > fim || (i <= valor && vetor[i] <= vetor[j])){
		u[k] = vetor[i];
		i++;
	}else{
		u[k] = vetor[j];
		j++;
	}
	k++;
    }

    for(size_t idx = 0; idx <= fim - inicio; idx++)
	vetor[inicio + idx] = u[idx];

    free(u);
}

void mergeSortRec_aux(int vetor[], size_t inicio, size_t fim){
    if(inicio >= fim)
	return;

    size_t m = (inicio + fim) / 2;
    mergeSortRec_aux(vetor, inicio, m);
    mergeSortRec_aux(vetor, m + 1, fim);
    merge(vetor, inicio, m, fim);
}

uint64_t mergeSort(int vetor[], size_t tam) {
    mergeSorRec_aux(vetor, 0, tam - 1);
    return -1;
}

int particiona(int vetor[], int inicio, int fim){
   int pivo, pivo_indice, i;
   pivo = vet[fim];
   pivo_indice = inicio;

   for(i = inicio; i < fim; i++){
   	if(vetor[i] <= pivo){
		troca(vet, i, pivo_indice);
		pivo_indice++;
	}
   }
   troca(vet, pivo_indice, fim);
   return pivo_indice;
}

uint64_t quickSort(int vetor[], size_t tam) {
    vetor[0] = 99;
    return -1;
}

uint64_t heapSort(int vetor[], size_t tam) {
    vetor[0] = 99;
    return -1;
}

uint64_t mergeSortSR(int vetor[], size_t tam) {
    vetor[0] = 99;
    return -1;
}

uint64_t quickSortSR(int vetor[], size_t tam) {
    vetor[0] = 99;
    return -1;
}

uint64_t heapSortSR(int vetor[], size_t tam) {
    vetor[0] = 99;
    return -1;
}
