#include<stdio.h>
#include<stdlib.h>
#include "racionais.h"

#define invalido 0
/*
	Especificacao geral do programa:

	Implementação de um tipo abstrato de dados para números racionais.
	Para isso, lê um valor n do usuário, gera dois números racionais aleatórios,
	calcula operações básicas com esses dois numeros e finalmente imprime na
	saída esses valores.
	Repetirá esse processo n vezes até que algúm número gerado aleatóriamente
	ou número resultante de alguma operação seja inválido.

	Foi utilizada a biblioteca stdlib.h para gerar os valores aleatórios.
	Para mais detalhes consulte racionais.c

	Define invalido 0: Para validar se um racional é inválido
*/
int main (){

	/*
	  n define quantas vezes se repetirá o processo
	*/
	int n = 0;

	/*
	  max define o valor máximo para gerar números aleatórios
	*/
	int max = 0;

	/*
 	  r1 e r2 guardam, respectivamente, o primeiro e o segundo racional aleatório a ser gerado
	*/
	struct racional r1;
	struct racional r2;

	/*
	  result_soma, ''_sub, ''_div, ''_mult guardam, respectivamente, o resultado das operações de soma,
	  subtração, divisão e multiplicação.
	*/
	struct racional result_soma;
	struct racional result_sub;
	struct racional result_div;
	struct racional result_mult;

	/*
	  Lê e verifica os dois valores inteiros do usuário.
	  De forma geral, n precisa estar entre: 0 < n < 100 e
	  max entre: 0 < max < 100. Caso não estejam nesses valores encerra o programa.
	*/
	scanf("%d", &n);
	if(!(n > 0) && (n < 100))
		return 0;

	scanf("%d", &max);
	if(!(max > 0) && (max < 30))
		return 0;

	for(int i = 1; i <= n; i++){
		printf("%d: ", i);
		/*
		  Cria, simplifica, salva em r1 e r2 os dois racionais aleatórios e os imprime na tela.
		*/
		r1 = sorteia_r(max);
		r2 = sorteia_r(max);
		imprime_r(r1);
		imprime_r(r2);

		/* Caso r1 ou r2 seja inválido encerra o programa */
		if(valido_r(r1) == invalido || valido_r(r2) == invalido){
			printf("NUMERO INVALIDO");
			return 1;
		}

		/*
		  Se r1 e r2 não forem inválidos calcula as operações entre r1 e r2 e as guarda nas respectivas
		  variáveis.
		  Também verifica se o resultado dessa operação é valido. Caso seja, então o racional é simplificado.
		  Porque não é possível simplificar um racional inválido.
		*/
		result_soma = soma_r(r1, r2);
		if(valido_r(result_soma))
			result_soma = simplifica_r(result_soma);

		result_sub = subtrai_r(r1, r2);
		if(valido_r(result_sub))
			result_sub = simplifica_r(result_sub);

		result_mult = multiplica_r(r1, r2);
		if(valido_r(result_mult))
			result_mult = simplifica_r(result_mult);

		result_div = divide_r(r1, r2);
		if(valido_r(result_div))
			result_div = simplifica_r(result_div);
		else{
			printf("DIVISAO INVALIDA");
			return 1;
		}
		/*
		  Imprime os resultados das operações (soma, subtração, multiplicação e divisão)
		  realizadas.
		*/
		imprime_r(result_soma);
		imprime_r(result_sub);
		imprime_r(result_mult);
		imprime_r(result_div);

		/*
		  Finalmente pula uma linha para que na próxima iteração os valores não estejam colados
		*/
		printf("\n");
	}

	return 0;
}
