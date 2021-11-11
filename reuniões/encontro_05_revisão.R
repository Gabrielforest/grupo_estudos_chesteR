##############################
#     chesteR - reunião 05   #
##############################

## Revendo os conceitos discutidos nos encontros anteriores

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

# caractere tem que ter aspas pra chamar
class(variavel)

# transformando variável
maçã <- "5"
as.numeric(maçã)

# tipo da variável
class(maçã)

# transformando e salvando variável
maçã <- as.numeric(maçã)

# tipo da variável
class(maçã)

# gráficos ggplot
# na base só tem variáveis numéricas
View()
mtcars


# Gráficos ggplot2 --------------------------------------------------------

# tools -> Install.packages -> ggplot2 
#install.packages("ggplot2")

library(ggplot2)

# composição dos gráficos no ggplot:

# data                        - dados
# aesthetic mapping           - eixos
# geometric object            - geométricos
# statistical transformations - transformações (modelos, etc)
# scales                      - escala
# coordinate system           - coordenadas 
# position adjustments        - posições de tudo

ggplot()

#  sintaxe básica ggplot2: ------------------------------------------------

# ggplot(data = nome_tabela, mapping = aes(eixos)) +
#   geom_ 

#  formas mais comuns de gráficos: ----------------------------------------

# ggplot(data, mapping = aes()) +
#   geom_point() 

# gráfico com cores de acordo com a variável gear:
ggplot(data = mtcars, 
       mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear)))

# explicação: o controle de eixos dentro da forma geométrica controla a cor do grupo

grafico_1 <- 
  ggplot(data = mtcars,
         mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear))) +
  stat_smooth(method = "lm",
              col = "blue",
              se = FALSE,
              size = 5)



# Gráficos por interface interativa ----------------------------------------

# tools -> Install.packages -> esquisse 
#install.packages("esquisse")
library(esquisse)

# addins -> 'ggplot2builder'

# addins ggplot2builder

