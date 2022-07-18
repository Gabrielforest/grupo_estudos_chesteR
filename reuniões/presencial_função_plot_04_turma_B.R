#' --- 
#' title: Reunião presencial 04 - Turma A
#' subtitle: Gráficos usando a função plot
#' author: Gabriel de Freitas Pereira
#' date: Julho de 2022
#' ---

#' # R - base `plot()` 
#' #### Números do 1 ao 10 eixos x e y

plot( x = 1:10, y = 1:10 )

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


#' ### Alterando tipos de linhas dos gráficos 
#' #### Para não termos que ocupar tanto espaço como anteriormente, utilizaremos um loop
#' #### para ver as opções de linhas disponíveis
#' 

par( mfrow = c( 2, 3 ) )

for ( i in 1:6 ) plot( 1:10, type = "l", lty = i )

#' ### Alterando largura das linhas dos gráficos
#'  

par( mfrow = c( 2, 5 ) )

for ( i in 1:10 ) plot( 1:10, type = "l", lwd = i )


#' ### Alterando tipos molduras dos gráficos 
#' #### Utilizaremos a mesma lógica, mas dessa vez criando uma variável 
#' #### para vermos os tipos de moldura disponíveis, as quais podem ser encontradas
#' #### através do comando help: `?par`
#'  

par( mfrow = c( 2, 3 ) )

tipos_moldura <- c( "l", "c", "u", "]", "n" )

for ( i in tipos_moldura ) plot( 1:10, bty = i )


#' # Exemplo usando conjunto de dados do R
#' #### Árvores de cerejeiras negras

trees

#' #### Personalizando gráfico de Circunferência por Altura usando conceitos estudados nesse encontro e no anterior

plot( trees$Height, trees$Girth, 
      xlab = "Altura (m)", ylab = "Circunferência (cm)", 
      main = "Circunferência x Altura - Cerejeira Negra",
      pch = 20,
      type = "o" )

# criando a linha da regressão linear: 
abline( lm( trees$Girth ~ trees$Height, trees ), lty = 2, col = "red", lwd = 2)

legend( x = "topleft", col = "red", lty = 2, lwd = 2, legen = "regressão", bty = "n" )

