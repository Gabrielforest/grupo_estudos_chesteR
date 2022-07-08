######################################################
#     chesteR - reunião presencial 01-02 - Turma B   #
######################################################

# Revisão de conceitos básicos

# variáveis ---------------------------------------------------------------

# definindo a variável: 
gabriel <- "ahufhasudfhasdhufauafhfasdpjfap"
gabriel

# o código a seguir apresenta erro, pois não definimos o valor da variável aaaaaaaaa
aaaaaaaaa <- 1
dnd <- aaaaaaaaa

# excluindo uma variável:
rm( aaaaaaaaa )

x <- 2

# excluindo 2 variáveis:
rm( aaaaaaaaa, dnd, x )

# excluindo todas as variáveis:
ls()
rm( list = ls() )
#
rm( gabriel, altura_arvore ) 


# atalhos -----------------------------------------------------------------

# alt - 
# alt + setinha = vai pro fim da linha
# ctrl + setinha = vai pro fim da palavra ou sinal
# ctrl + shift + setinha = seleciona
# shift + end = seleciona a linha inteira
# alt + shift + setinha

# Boas práticas -----------------------------------------------------------

# exemplo para não seguir:
formula <- "dicc~dap*(b0+b1*(hi/ht)+b2*((hi/ht)^2)+b3*((hi/ht)^3)+b4*((hi/ht)^4)+
b5*((hi/ht)^5))"

# é ideal separar textos e/ou códigos extensos para facilitar a compreensão
formula <- "dicc ~ dap * 
              ( b0 
              + b1 * (hi/ht) 
              + b2 * ( (hi/ht) ^ 2) 
              + b3 *( (hi/ht) ^ 3) 
              + b4 *( (hi/ht) ^ 4) 
              + b5 * ( (hi/ht) ^ 5 ) 
              )"


# operações ---------------------------------------------------------------

aaaaaaaaa <- 1 + 1

# adição:
aaaaaaaaa + 1; # equivalente a 
(1 + 1) + 1
#ou sem espaçamento 
1+1+1


# subtração:
1 - 1

#ou sem espaçamento 
1-1

#ou usando parênteses
aaaaaaaaa - 1

# divisão:
1 / 1

# multiplicação:
1 * 1

# exponenciação pode ser feita de duas formas:

2 ^ 2
#ou
2 ** 2

# resto da divisão %%:

2 %% 2

# seguindo a ordem e colocando nomes ( ideal )
ifelse( test = 2 %% 2 == 0, yes = "par", no = "ímpar" )

# seguindo a ordem sem nomes dos parâmetros
ifelse( 3 %% 2 == 0, "par", "ímpar")

# dar nome ideal:
ifelse( yes = "par", no = "ímpar", test = 2 %% 2 == 0 )

# fora de ordem preciso dar nome, o código abaixo retorna NA
ifelse( "par", "ímpar", 2 %% 2 == 0)

# raiz quadrada:
# square root
sqrt( 9 )

sqrt( 9 * 9 )


###R= sqrt((dap^2)/(K/2500))
# sqrt((0.2364^2)/(1.5/2500))

dap <- 0.2364 
K <- 2

sqrt( ( dap ^ 2) / ( K / 2500 ) )












