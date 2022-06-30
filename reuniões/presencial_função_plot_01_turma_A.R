######################################################
#     chesteR - reunião presencial 01  -   Turma A   #
######################################################

# Gráficos

# dados de CO2 que serão usados -------------------------------------------
# ctrl + clique = atalho pro comando View()
CO2

# histograma de absorção de CO2
hist(CO2$uptake)

# criando janela gráfica --------------------------------------------------

# linux
x11()
# macintosh
macintosh()
# windows
windows()

# Gráfico de densidade (curva histograma) ---------------------------------

d1 <- density(CO2$uptake)

# função plot
plot(d1)

# colocando título, alterando labels dos eixos, e ajustando limites
plot(d1, main = "densidade"); # título

plot(d1, main = "densidade", xlab = ""); # eixos

plot(d1, main = "densidade", xlab = "", yaxs = "i"); # limites

plot(d1, main = "densidade", xlab = "", yaxs = "i", zero.line = FALSE); # tirar linha cinza da densidade


# legenda por coordenada
text(locator(1), "densidade CO2")

# função curve
windows()
curve(x^3, from = 0, to = 3)

# isso é a mesma coisa que:
f <- function(x) { x^3 }
x <- seq(0, 3, length = 1000)
y <- f(x)

plot(x, y, type = "l"); # gráfico com linha

# adicionando gráfico
curve(x^2, from = 0, to = 5, add = TRUE)

# legenda por coordenada
text(locator(2), c("curva 1", "curva 2"))


# interface gráfica manual:
library(esquisse)