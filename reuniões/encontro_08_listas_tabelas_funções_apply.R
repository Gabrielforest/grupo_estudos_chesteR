##############################
#     chesteR - reunião 08   #
##############################



# listas ------------------------------------------------------------------

lista <- list(itens_limpeza = c("detergente", "amaciante", "sabão em pó"),
              itens_alimentacao =  c("alface", "soja", "pepino"),
              itens_farmacia = c("alfabisabolol", "predicim", "rivotril"))

lista$itens_limpeza


# tabelas -----------------------------------------------------------------

tabela <- data.frame(itens_limpeza = c("detergente", "amaciante", "sabão em pó"),
                     itens_alimentacao =  c("alface", "soja", "pepino"),
                     itens_farmacia = c("alfabisabolol", "predicim", "rivotril"))
View(tabela)

# conjunto de dados do R
# comando para acessar a lista dos dados disponíveis:
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

# criando funções personalizadas, exemplo: 
somatoria <- function(x , y) {x + y}
somatoria(x = 1, y = 2)

# outro exemplo de função
oi <- function(nome) {paste0("oi ", nome)}
oi(nome = "Gabriel")

# usando função personalizada no lapply
lapply(X = dados_plantas, FUN = function(x) {x + 1})


## sapply - retorna um vetor ou matriz

sapply(X = dados_plantas, FUN = class)

sapply(X = dados_plantas, FUN = levels)


## mapply - versão multivariada do apply

mapply(FUN = somatoria, x = dados_plantas$Sepal.Length, y = dados_plantas$Sepal.Width) 


## tapply - aplicar uma função para um grupo nivelado

tapply(X = dados_plantas$Sepal.Length, INDEX = dados_plantas$Species, FUN = min)



# Resumindo:

# apply: Aplicar função nas margens de um array.

# lapply: Faz um loop em uma lista e avalia uma função em cada elemento

# sapply: O mesmo que lapply, mas tenta simplificar o resultado.

# mapply: versão multivariada do lapply (isto é, aceita mais de um argumento)

# tapply: aplicar uma função sobre subconjuntos de um vetor.