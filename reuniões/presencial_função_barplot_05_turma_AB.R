#' --- 
#' title: Reunião presencial 04 - Turma AB - chesteR
#' subtitle: Gráficos de barra
#' author: Gabriel de Freitas Pereira
#' date: Agosto de 2022
#' ---

#' dados Pinus taeda

data()
View( Loblolly )
pinus <- Loblolly

#' separando sementes 319

#' usando which
pinus[ which( pinus$Seed == 319 ), ]

#' usando subset
subset( pinus, Seed == 319 )

#' comparando velocidade das funções

Sys.time()
subset( pinus, Seed == 319 )
Sys.time()

comparacao_tempo <- function( f ) {
  
  tic <- Sys.time()  
  
  f
  
  toc <- Sys.time()
  
  res <- toc - tic
  
  list( f, res )
  
}

comparacao_tempo( subset( pinus, Seed == 319 ) )
comparacao_tempo( pinus[ which( pinus$Seed == 319 ), ] )

microbenchmark::microbenchmark( pinus[ which( pinus$Seed == 319 ), ] )
microbenchmark::microbenchmark( subset( pinus, Seed == 319 ) )

#' criando tabela do Pinus 319 

pinus_319 <- subset( pinus, Seed == 319 )

#' gráfico altura por idade

names( pinus_319 )
bp <- barplot( height ~ age, data = pinus_319, col = "red" )

#' cores rgb

cores <- c( rgb( red = 0.6, green = 0.2, blue = 0.7 ),
            rgb( red = 0.1, green = 0.5, blue = 0.7 ),
            rgb( red = 0.6, green = 0.2, blue = 0.7 ),
            rgb( red = 0.1, green = 0.5, blue = 0.7 ),
            rgb( red = 0.1, green = 0.1, blue = 0.7 ), 
            rgb( red = 0.5, green = 0.9, blue = 0.7 ) )

#' adicionando cores no gráfico

#' equivalente a variável cores
#' c("#9933B3", "#1A80B3", "#9933B3", "#1A80B3", "#1A1AB3", "#80E6B3")

bp <- barplot( height ~ age, data = pinus_319, 
               col = c("#9933B3", "#1A80B3", "#9933B3", "#1A80B3", "#1A1AB3", "#80E6B3") )

#' adequando limites das barras

bp <- barplot( height ~ age, 
               data = pinus_319, 
               col = cores, ylim = c( 0, 70 )  )

#' adicionando texto
#' diminuindo tamanho dos números
#' adequando posição dos números

text( bp, 
      y = pinus_319$height + 1.5, 
      labels = pinus_319$height, 
      cex = 0.8  )




