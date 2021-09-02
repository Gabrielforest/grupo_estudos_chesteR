##############################
#     chesteR - reunião 02   #
##############################


# Verificando Variáveis e Limpando Ambiente ------------------------------ (retomando conceitos)

# alt - 
#Criando variáveis:
saopaulo <- "Vencedor"
saopaulo

palmeiras <- "Perdedor"
palmeiras

#Retornar quais são as variáveis:
ls()             

#Removendo uma variável:
rm(Palmeiras)    

#Removendo todas as variáveis do workspace:
rm(list = ls())



# Tipos Básicos de Dados --------------------------------------------------

# numeric
# integer
# logical
# character


# função class - retorna a classe do que está sendo testado:

# isso daqui não é inteiro no R
class(10)    

# numeric = número decimal: 
class(7.2)

# lógico pode ser tanto TRUE, T, FALSE, F:
class(TRUE)
class(T)

# caractere tem que ter aspas pra chamar
class("variavel")     
class('Variavel')


# Verificação do tipo de Variável -----------------------------------------

var_a <- "5"

var_b <- 5

var_c <- 4.3

var_d <- "TRUE"


# teste de identificação:

is.integer(var_a)   

is.character(var_b) 

is.numeric(var_c)   

is.logical(var_d)   

#Obs.: o "is." funciona em qualquer tipo de variável do R.


# Conversão de variáveis --------------------------------------------------


#É possível converter determinados dados, porém nem todos:

# pra alterar uma variável é necessário usar o alt - com o nome da variável:
var_a <- as.numeric(var_a) 

as.integer(var_b) 

as.integer(var_c) 

as.logical(var_d) 


# o que vale é o que está "guardado" dentro de uma variável,
# se for um número volta um número, etc:
cherno <- "5"

pipe <- cherno 
#ou
pipe <- "5"

as.numeric(pipe)

# não funfa:
var_a <- "5 + 5"

as.numeric(var_a)


# ctrl + shift + c      Atalho pra comentar o código

# grupo de estudos 2+3
# aidfgbaisdbfaliusd
# asidlbfaiulsbdf
# asçodnfaçosdnf

# arredondar casas decimais:
round((25 + 30 + 50)/20, digits = 1)

# arredondar pra cima casa decimais:
ceiling((25 + 30 + 50)/ 20)

# informações sobre as funções:
?ceiling

# segura o ctrl e clica na variável (atalho do View)

# há diferenças entre o integer e o numeric em relação ao espaço que eles ocupam
# na memória e em algumas funções...






