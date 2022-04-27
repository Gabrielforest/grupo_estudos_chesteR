##############################
#     chesteR - reunião 09   #
##############################


# Operações por agrupamentos ----------------------------------------------

# data.frame que iremos utilizar (nativo do R):
names(iris)

# tapply pode realizar algumas operações por agrupamento:

tapply(X = iris$Petal.Width, INDEX = iris$Species, FUN = mean)

# outra forma de fazer isso em forma de tabela:

aggregate(Petal.Width ~ Species, data = iris, FUN = mean)

# aggregate é designado para trabalhar com várias colunas 
# e retornar um dataframe (tabela) com uma linha para cada categoria, 
# enquanto o tapply é designado para com vetores (uma única coluna) 
# retornando uma matriz .

# Qual seria a opção mais rápida? 

clock <- function(f) {
  
  # tempo inicial
  tic <- Sys.time()
  
  # função que iremos testar
  f
  
  # tempo final
  toc <- Sys.time()
  
  # tempo que a função gastou para rodar
  time <- tic - toc
  
  # retornando o resultado da função e o tempo que ela levou
  list(f, time)
  
}

clock(tapply(X = iris$Petal.Width, INDEX = iris$Species, FUN = mean))
clock(aggregate(Petal.Width ~ Species, data = iris, FUN = mean))


# Obs.; Existem outras maneiras mais eficientes
# de se obter o exato tempo que leva cada função, mas essa é bastante clara e 
# aborda o tópico de funções que começamos a ver no último encontro.

# outros usos da função aggregate, que explicitam suas vantagens:
aggregate(cbind(iris$Petal.Length, iris$Petal.Width), by = list(iris$Species), FUN = mean)

# mesmo resultado, porém através da fórmula que já retorna o nome original das colunas:
aggregate(cbind(Petal.Length, Petal.Width) ~ Species, data = iris, FUN = mean)

# contando o número de vezes que ocorre cada espécie
aggregate(iris$Species, by = list(iris$Species), FUN = length)

# a forma mais eficiente de se fazer isso seria através da função table:
table(iris$Species)

# Com isso podemos analisar tabelas e vetores que possuem categorias rapidamente!
