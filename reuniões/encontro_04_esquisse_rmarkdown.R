##############################
#     chesteR - reunião 04   #
##############################


# tools -> Install.packages -> esquisse 
#install.packages("esquisse")
library(esquisse)

# tools -> Install.packages -> ggplot2 
#install.packages("ggplot2")
library(ggplot2)


# Gráficos esquisse -------------------------------------------------------

carros <- mtcars

library(ggplot2)

#install.packages("dplyr")
library(dplyr)


# código do esquisse:

carros %>%
 filter(mpg >= 16.4 & mpg <= 34) %>%
 ggplot() +
 aes(x = mpg, y = drat, colour =as.factor(gear)) +
 geom_point(shape = "circle", size = 1.5) +
 scale_color_hue(direction = 1) +
 labs(x = "Miles per Galoon", title = "Gráfico bonito") +
 theme_minimal()


# addins -> 'ggplot2builder'

# addins ggplot2builder

# gerar o código do gráfico e passar pro markdown

ggplot(data = mtcars, 
       mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear)))



# Rmarkdown ---------------------------------------------------------------








