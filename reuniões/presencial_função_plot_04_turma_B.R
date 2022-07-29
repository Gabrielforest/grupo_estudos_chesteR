#' --- 
#' title: Reunião presencial 04 - Turma AB - chesteR
#' subtitle: Gráficos usando a função plot
#' author: Gabriel de Freitas Pereira
#' date: Julho de 2022
#' ---

#' # R - base `plot()` 
#' #### Números do 1 ao 10 eixos x e y

plot( x = 1:10, y = 1:10 )

plot( 1:10, 1:10 )

# equivalente a:

plot( 1:10 )

#' ### Alterando tipos de gráfico 
#' 

#' #### 1. gráfico de linhas - "l"

plot( 1:10, type = "l" )

#' #### 2. gráfico de pontos com linhas - "b"

plot( 1:10, type = "b" )

#' #### 3. gráfico de linhas com "pausas" - "c" 

plot( 1:10, type = "c" )

#' #### 4. gráfico de pontos com linhas passando dentro dos pontos - "o"

plot( 1:10, type = "o" )

#' #### 5. gráfico de linhas verticais - "h"

plot( 1:10, type = "h" )

#' #### 6. gráfico de escada - "s"

plot( 1:10, type = "s" )


#' #### 7. gráfico sem nada
 
plot( 1:10, type = "n" )


#' ### Alterando tipos dos gráficos 
#' #### Para não termos que ocupar tanto espaço como anteriormente, utilizaremos um loop
#' #### para ver as opções de linhas disponíveis

par( mfrow = c( 2, 2 ) )

tipos_graficos <- c( "l", "b", "c", "h" ) 

for( tipos in tipos_graficos ) plot( 1:10, type = tipos )


#' ### Alterando tipos molduras dos gráficos 
#' #### Utilizaremos a mesma lógica, mas dessa vez criando uma variável 
#' #### para vermos os tipos de moldura disponíveis, as quais podem ser encontradas
#' #### através do comando help: `?par`

par( mfrow = c( 2, 3 ) )

molduras <- c( "l", "7", "c", "u", "]" )

for ( bordas_possiveis in molduras ) plot( 1:10, bty = bordas_possiveis )


#' ### Alterando largura das linhas dos gráficos

par( mfrow = c( 2, 5 ) )

for( largura in 1:10 ) plot( 1:10, type = "l", lwd = largura )


#' ### Fazendo diferentes tipos de linhas

par( mfrow = c( 2, 3 ) )

for( i in 1:6 ) plot( 1:10, type = "l", lty = i )


#' ### Alterando nomes e componentes gráficos

par( mfrow = c( 1, 1 ) )

plot( 1:20, pch = 1:20 )

plot( 1:10, pch = "β", xlab = "Eixo x", ylab = "Eixo y", main = "Título" )


#' # Exemplo usando conjunto de dados do R
#' #### Árvores de cerejeiras negras
data()
trees

#' #### Personalizando gráfico de Circunferência por Altura usando conceitos estudados nesse encontro e no anterior

plot( x = trees$Height, y = trees$Girth,
      xlab = "Altura", ylab = "Circunferência", main = "Cerejeira Negra",
      pch = 20, bty = "l" )

#' ### Histograma 

hist( trees$Height, 
      freq = TRUE, 
      col = terrain.colors( 10 ), 
      xlab = "Frequência", ylab = "Altura", main = "Histograma" )

#' #### comando para gerar o documento html: `rmarkdown::render( "C:/Users/OppenSocial/Desktop/grupo_estudos_chesteR/reuniões/presencial_função_plot_04_turma_B.R" )`