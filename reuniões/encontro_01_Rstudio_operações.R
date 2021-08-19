##############################
#     chesteR - reunião 01   #
##############################


# Funcionalidades Rstudio -------------------------------------------------


#file -> Reopen with enconding -> UTF-8 -> set as default 


#edit (atalhos de digitação)


#code -> ctrl + shift + R ### dar título


#view -> panes -> Pane Layout


#plots - só fica disponível quando faço um gráfico:

plot(c(1,2,3,4,5,6,7,8,9,10))
# é igual a
plot(c(1:10))


#selecionar diretório de trabalho:   
#session -> set working directory -> choose directory
setwd("C:/Users/Desktop")


#build - cria arquivos padrão em determinada tarefa


#debug - forma como retorna o erro


#profile - como a memória ta sendo usada


#tools - usar comandos do github e do prompt de comando abrindo um terminal


#help -> cheatsheets -> (pdfs com várias informações)


#comando: alt + shift + K (atalhos das opções e digitação)



# Operações Matemáticas Básicas -------------------------------------------



#adição
1+1
#ou
1 + 1
#ou
(1+1)

#subtração
1-1
#ou
1 - 1
#ou
(1-1)

#divisão
2 / 2

#multiplicação
5 * 5

#exponenciação pode ser feita de dois jeitos com ** ou ^
2**2
2^2

#resto de divisão %%
4%%2



# Criando variáveis -------------------------------------------------------

#alt -  (atalho pra definir variáveis)
amigão <- 2

# definindo o preço do maracuja (variável):
maracuja <- 5

# maracujaia sinônimo de maracuja:
maracujaia <- maracuja

# alterei o preço do maracuja:
maracuja <- 6

maracujaia

# concatenando variável (escrevendo mais de um valor)
maracuja <- c(6, 5)


Variavel <- amigão         #erro

Variavel <- "amigão"

# concatenando variável (escrevendo mais de um valor)
variavel <- c("amigão", "amiguinha")

# variavel x e defini variavel como x
x <- "letra"   
Variavel <- x^2    # erro de formato da variavel (letra nao faz conta)
Variavel


#devido ao padrão do R, é possível tornar um vetor uma função:

c <- "amigão"  
c                 #retorna "amigão"

c(1,2,3)
c                 #o que vai retornar?

#amigão

# excluindo uma variável:
rm(c)

# excluindo 2 variáveis:
rm(c, x)

# excluindo todas as variáveis:
rm(list = ls())



