#include<stdio.h>
#include<stdlib.h>
#include "racionais.h"

#define semente 0

/*
	Implementação de funções para tipo abstrato de dados para números racionais.
	Para mais informações sobre os parâmetros, funcionalidades e especificações das funções aqui implementadas
	consulte o racionais.h

	Para calcular os números aleatórios foi utilizada a biblioteca stdlib.h passando como 'semente' o valor 0
*/


/*
	Inicializa a função que gera os números aleatórios caso ela não tenha sido inicializada previamente.
	Depois, gera um número aleatório 'random' que esteja entre: min < ramdom < range.
	range é calculado usando os valores de min e max passados nos parâmentros.
*/
int aleat(int min, int max){
	static int initialized = 0;

	if(!initialized){
		srand(semente);
		initialized = 1;
	}

	int range = max - min + 1;
	int random = min + rand() % range;

	return random;
}

int mdc(int a, int b){
	if(a == 0 || b == 0)
		return -1;
	int aux = 0;
	while(b != 0){
		aux = b;
		b = a % b;
		a = aux;
	};
	return a;
}

int mmc(int a, int b){
	int mmc = 0;
	int valor_mdc = mdc(a,b);

	mmc = (a * b) / valor_mdc;

	return mmc;
}

struct racional simplifica_r(struct racional r){
	int valor_mdc = mdc(r.num, r.den);

	r.num /= valor_mdc;
	r.den /= valor_mdc;

	if((r.num < 0 && r.den < 0) || (r.den < 0)){
		r.num *= -1;
		r.den *= -1;
	}

	return r;
}

struct racional cria_r(int numerador, int denominador){
	struct racional r;

	r.num = numerador;
	r.den = denominador;

	return r;
}

struct racional sorteia_r(int n){
	int num_random = aleat(0, n);
	int den_random = aleat(0, n);
	struct racional r = cria_r(num_random, den_random);

	if(valido_r(r) == 0){
		r.valido = 0;
		return r;
	}

	r.valido = 1;
	return simplifica_r(r);
}

void imprime_r(struct racional r){
	if(r.num == 0)
		printf("%d ", r.num);
	else if(r.num == r.den)
		printf("%d ", 1);
	else if(r.den == 1)
		printf("%d ", r.num);
	else if(r.valido == 0)
		printf("INVALIDO ");
	else
		printf("%d/%d ", r.num, r.den);
}

int valido_r(struct racional r){
	if(r.den == 0)
		return 0;

	return 1;
}

struct racional soma_r(struct racional r1, struct racional r2){
	struct racional result;
	int valor_mmc = mmc(r1.den, r2.den);

	result.num = (r1.num * (valor_mmc / r1.den)) + (r2.num * (valor_mmc / r2.den));
	result.den = valor_mmc;

	return result;
}

struct racional subtrai_r(struct racional r1, struct racional r2){
	struct racional result;
	int valor_mmc = mmc(r1.den, r2.den);

	result.num = (r1.num * (valor_mmc / r1.den)) - (r2.num * (valor_mmc / r2.den));
	result.den = valor_mmc;

	return result;
}

struct racional multiplica_r(struct racional r1, struct racional r2){
	struct racional result;

	result.num = r1.num * r2.num;
	result.den = r1.den * r2.den;

	return result;
}

struct racional divide_r(struct racional r1, struct racional r2){
	struct racional result;

	result.num = r1.num * r2.den;
	result.den = r1.den * r2.num;

	return result;
}


