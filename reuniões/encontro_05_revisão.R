##############################
#     chesteR - reunião 05   #
##############################

## Revendo os conceitos discutidos nos encontros anteriores

# Criando variáveis -------------------------------------------------------

#alt -  (atalho pra definir variáveis)
amigão <- 2

# como os russos digitam:
2 -> amigão 

# definindo o preço do maracuja (variável):
maracuja <- 5

# maracujaia sinônimo de maracuja:
maracujaia <- maracuja

# valores iguais:
maracujaia == maracuja

# alterei o preço do maracuja:
maracuja <- 6

# aqui mudei o valor, não são mais iguais
maracujaia == maracuja


# concatenando variável (escrevendo mais de um valor)
maracuja <- c(6.5, 5)

#chamando valores por posição:
maracuja[1]
maracuja[2]

rm(amigão)
Variavel <- amigão         #erro
Variavel <- "amigão"

# concatenando variável (escrevendo mais de um valor)
variavel <- c("amigão", "amiguinha")

# posição:
variavel[1]

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
# ctrl + botão esquerdo mouse em cima dos dados:
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
              size = 1)

# pra fazer o LM é preciso escrever a última linha do código:
ggplot(mt) +
  aes(x = mpg, y = drat, colour = factor(gear)) +
  geom_point(shape = "circle", size = 1.5) +
  scale_color_hue(direction = 1) +
  theme_minimal() +
  geom_smooth(method = "lm", col = "red", color = "black", size = 0.5)

# Gráficos por interface interativa ----------------------------------------

# tools -> Install.packages -> esquisse 
#install.packages("esquisse")
library(esquisse)

# addins -> 'ggplot2builder'

# addins ggplot2builder

