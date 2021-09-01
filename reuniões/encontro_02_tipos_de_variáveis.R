##############################
#     chesteR - reunião 02   #
##############################


# Verificando Variáveis e Limpando Ambiente ------------------------------ (retomando conceitos)


#Criando variáveis:
saopaulo <- "Vencedor"
sao_paulo

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


class(10)    

class(7.2)

class(TRUE)

class(variavel)     



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


#É possível converter determinados dados:

as.numeric(var_a) 

as.integer(var_b) 

as.integer(var_c) 

as.logical(var_d) 







