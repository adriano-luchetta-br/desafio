#!/usr/bin/perl

# Desafio Capegemini
# Questao 2 : Dado um vetor de inteiros n e um inteiro qualquer x. Construa um algoritmo que determine o número de elementos pares do vetor que tem uma diferença igual ao valor de x.

# Exemplo:

# Entrada:
# n = [1, 5, 3, 4, 2]

# Saída:
# 3

# Explicação:
# Existem 3 pares de inteiros no vetor com uma diferença de 2: [5, 3], [4, 2] e [3, 1].

# Receber os numeros como parametros na linha de comando (conforme enunciado, o ultimo elemento é a diferença x):

@arr_numeros  = @ARGV;

if (scalar(@arr_numeros) < 3) {
    print "\n** Faltam valores **\n";
    exit;
}

$valor_x = pop(@arr_numeros);

# Remover valores indevidos (não numericos) :

@arr_ordenado = grep (/^\d*$/, @arr_numeros);

# ordenar o array

@arr_ordenado = sort { $a <=> $b } @arr_ordenado;

$contagem = 0;

foreach $ind1 (0..$#arr_ordenado - 1) {
    foreach $ind2 ($ind..$#arr_ordenado) {
        if ($arr_ordenado[$ind1] + $valor_x == $arr_ordenado[$ind2]) {
            $contagem++;
        }
    }
}


# Saida

print "\nNumero de pares : " . $contagem;

exit;