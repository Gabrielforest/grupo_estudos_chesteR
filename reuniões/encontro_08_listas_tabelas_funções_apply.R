##############################
#     chesteR - reunião 08   #
##############################



# listas ------------------------------------------------------------------

list(itens_limpeza = c("detergente", "amaciante", "sabão em pó"),
     itens_alimentacao =  c("alface", "soja", "pepino"))



# tabelas -----------------------------------------------------------------

# conjunto de dados do R

data()

# atribuindo um novo nome apenas pra deixar mais claro o que são os dados:
dados_plantas <- iris

class(dados_plantas)



# família de funções apply ------------------------------------------------

## apply - retorna vetor 

# por colunas
apply(X = dados_plantas[,1:4], MARGIN = 2, FUN = mean)

# por linhas
apply(X = dados_plantas[,1:4], MARGIN = 1, FUN = mean)


## lapply - retorna lista 

lapply(X = dados_plantas, FUN = class)

lapply(X = dados_plantas, FUN = function(x) {x + 1})


## sapply - retorna um vetor ou matriz

sapply(X = dados_plantas, FUN = class)

sapply(X = dados_plantas, FUN = levels)


## mapply - versão multivariada do apply

mapply(FUN = function(x, y) {x + y}, 
       x = dados_plantas$Sepal.Length, 
       y = dados_plantas$Sepal.Width)


## tapply - aplicar uma função para um grupo nivelado

tapply(X = dados_plantas$Sepal.Length, INDEX = dados_plantas$Species, FUN = max)


# Resumindo:

# apply: Aplicar função nas margens de um array.

# lapply: Faz um loop em uma lista e avalia uma função em cada elemento

# sapply: O mesmo que lapply, mas tenta simplificar o resultado.

# mapply: versão multivariada do lapply (isto é, aceita mais de um argumento)

# tapply: aplicar uma função sobre subconjuntos de um vetor.