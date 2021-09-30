##############################
#     chesteR - reunião 03   #
##############################



# Gráficos ggplot2 --------------------------------------------------------

install.packages("ggplot2")

library(ggplot2)

# composição dos gráficos no ggplot:

# data                        - dados
# aesthetic mapping           - eixos
# geometric object            - geométricos
# statistical transformations - transformações (modelos, etc)
# scales                      - escala
# coordinate system           - coordenadas 
# position adjustments        - posições de tudo
                    



#  sintaxe básica ggplot2: ------------------------------------------------


# ggplot(data, mapping = aes()) +
#   geom_ 


#  formas mais comuns de gráficos: ----------------------------------------

# ggplot(data, mapping = aes()) +
#   geom_point() 


# ggplot(data, mapping = aes()) +
#   geom_bar()


# ggplot(data, mapping = aes()) +
#   geom_line()


# ggplot(data, mapping = aes()) +
#   geom_histogram() 



# Usando a base mtcars ----------------------------------------------------

ggplot(data = mtcars,
       mapping = aes(x = drat, y = mpg)) +
  geom_point()

# maximizar a tela do plot: ctrl shift 5


# melhorando esse gráfico -------------------------------------------------

# na base só tem variáveis numéricas
View(mtcars)


# gráfico com cores de acordo com a variável gear:
ggplot(data = mtcars, 
       mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = gear))

# explicação: o controle de eixos dentro da forma geométrica controla a cor do grupo


ggplot(data = mtcars,
       mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear))) +
  stat_smooth(method = "lm",
              col = "blue",
              se = FALSE,
              size = 1)

# explicação: regressão linear (lm), cor da linha (col), não mostrar o erro padrão (se = FALSE)
# tamanho da linha (size = 1).

# ou salvar o gráfico e digitar o restante do código:





# adicionando título:

labs(title = "Gráfico mpg x drat")




# Vantagens do ggplot2 => qualquer tipo de gráfico que tu precisa alguém já fez e 
# disponibilizou o código na internet, e dá pra ajustar tudo o que quiser, que não da pra
# fazer no plot padrão do R.



