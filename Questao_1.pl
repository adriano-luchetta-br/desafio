#!/usr/bin/perl

# Localizar o valor mediano em um array

# Receber os numeros como parametros na linha de comando :

@arr_numeros  = @ARGV;

# Remover valores indevidos (não numericos) :

@arr_ordenado = grep (/^\d*$/, @arr_numeros);

if (! (scalar(@arr_ordenado) % 2)) {
    print "\n** Deve ser informado uma quantidade impar de numeros **\n";
    exit;
}

if (scalar(@arr_ordenado) == 1) {
    print "\nValor da mediana : " . $arr_ordenado[0];
    exit;
}

# ordenar o array

@arr_ordenado = sort(@arr_ordenado);

$mediana = $arr_ordenado[sprintf("%d", scalar(@arr_ordenado) / 2) - 1];

# Saida

print "\nValor da mediana : " . $mediana;

exit;