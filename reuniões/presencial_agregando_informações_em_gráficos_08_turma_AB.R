#' --- 
#' title: Reunião presencial 08 - Turma AB - chesteR
#' subtitle: Agregando informações para gráficos e estatísticas
#' author: Gabriel de Freitas Pereira
#' date: Agosto de 2022
#' ---

#' pacotes que serão usados

# Tools -> install packages -> digita nome do pacote
#install.packages( "psych" )
#install.packages( "ggpubr" )

library( psych )
library( ggpubr )

#' dados que serão usados

ToothGrowth
??ToothGrowth
View( ToothGrowth )

#' estatísticas dos dados

summary( ToothGrowth )

describe( ToothGrowth )

# sem chamar o comando library( psych )

psych::describe( ToothGrowth )


#' estatísticas por grupos

describeBy( len ~ supp + dose, data = ToothGrowth )

describeBy( len ~ supp, data = ToothGrowth )

#' agrupando dados pela média de len por supp e dose

tratamentos <- aggregate( len ~ supp + dose, data = ToothGrowth, FUN = mean )

#' criando gráfico de linhas de len por dose 

ggline( tratamentos, x = "dose", y = "len", color = "supp" )

#' criando gráfico de barras de len por dose 

p <- ggbarplot( tratamentos, 
                x = "dose",
                y = "len",
                fill = "supp" )

#' acrescentando o número da média de cada dose em cima das barras

p <- ggbarplot( tratamentos, 
                x = "dose",
                y = "len",
                fill = "supp", 
                label = TRUE )

#' fazendo iniciar no 0
#' aumentando limites

p <- p + scale_y_continuous( expand = c( 0, 0 ), limits = c( 0, 60 ) )



ggscatter(
  iris, 
  x = "Sepal.Length", 
  y = "Sepal.Width",
  color = "Species", 
  palette = "jco",
  add = "reg.line" ) +

    facet_wrap( ~ Species ) +
    stat_cor( label.y = 4.4 ) +
    stat_regline_equation( label.y = 4.2 )



