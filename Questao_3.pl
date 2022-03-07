#!/usr/bin/perl

# Desafio Capegemini
# Questao 3

# Um texto precisa ser encriptado usando o seguinte esquema. 
# Primeiro, os espaços são removidos do texto. 
# Então, os caracteres são escritos em um grid, no qual as linhas e colunas tem as seguintes regras:

#       T ** 0.5 <= linha <= coluna <= T ** 0.5

# Considere T, como o tamanho do texto.
# Se certifique de que linhas x colunas >= T.
# Se múltiplos grids satisfazem as condições, escolha aquele com a menor área.
# Escreva um algoritmo que ao receber uma string s, mostre a mensagem encriptada de acordo com as regras descritas.

# A string deve ser informada na linha de comando entre aspas, pelo menos se tiver espaços em branco no meio

($s) = @ARGV;          # Receber a string
chomp($s);              # Retirar eventuais avanços de linha do final da string


# remover espaços em branco :

$s =~ s/\s//g;

# determinar o tamanho do texto :

$tam_texto = length($s);

# O grid é um quadrado com lado sendo a raiz quadrada do tamanho do texto arredondado para o inteiro acima :

$lado = int($tam_texto ** 0.5);
if ($lado * $lado < $tam_texto) {
    $lado += 1;
}

# separar a sring em um array de caracteres :

@arr_caracteres = split('', $s);

# montar o grid :

@grid = ();
$lin  = 0;
$col  = 0;

foreach my $caracter (@arr_caracteres) {
 $grid[$lin][$col] = $caracter;
 $col++;
 if ($col == $lado) {
     $col = 0;
     $lin++;
 }
}

# Apresentar o texto criptografado :

print "\nTexto criptografado : ";

for ($col = 0; $col < $lado; $col++) {
    for ($lin = 0; $lin < $lado; $lin++) {
        print $grid[$lin][$col];
    }
    print ' ';
}

print "\n";

exit;