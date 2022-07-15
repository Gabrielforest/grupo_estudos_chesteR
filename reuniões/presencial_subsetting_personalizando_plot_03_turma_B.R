###################################################
#   chesteR - reunião presencial 03 - Turma B     #
###################################################

# Subsetting

x <- c( 5, 8, 1, 3, 5 )
y <- c( "d", "b", "c", "a" )
z <- 1 

length( x )
class( x )

# selecionando por posições 

x[ c( 1, 2 ) ]
z[ 1 ]
z[ 2 ]

# índices duplicados

y[ c( 2, 2 ) ]

# selecionando por exclusão de valores

x[ -4 ]
y[ -c( 4 , 2 ) ]
y[ c( -4 , -2 ) ]

# ordenando dados por índice (crescente)

order( y )

# decrescente

order( x, decreasing = TRUE )

# ordenar variáveis 
sort( x )
sort( y )

# seleção por condição

x[ x < 4 ]

# equivalente a
x[ c( FALSE, FALSE, TRUE, TRUE, FALSE ) ]

# responde de forma lógica
h <- x < 4
class( h )

# definindo nomes, função setNames
setNames( x, letters[ 1:5 ] )

# selecionando colunas dados CO2

data()
CO2[ c( 1, 1) ]
CO2[ 1, 1 ]

# selecionando  linha 9 todas colunas
CO2[ 9, ]

# selecionando coluna 3, todas as linhas
CO2[ , 3 ]

# alterando coluna
CO2$Treatment <- 1

View( CO2 )

#alterando linha

CO2[ 1, ] <- c( "Qn1", "Quebec", 1, 2, 3)


# usando dados CO2, funções: colnames, rownames, colSums, rowSums, lapply

colnames( CO2 )
colnames( CO2 ) <- c( "Planta", "Tipo", "Tratamento", "Concentração", "Absorção" )

rownames( CO2 )

colSums( mtcars )

# amostrando dados da tabela de forma aleatória

sample( x, size = 2 )

# removendo colunas atribuindo nulo

CO2$Planta <- NULL


# plot CO2 e alterando: ---------------------------------------------------
# forma dos pontos
# cor de fundo 
# cor dos números dos eixos
# cor do título dos eixos
# cor dos componentes gráficos

# parâmetros gráficos de forma geral

par( bg = "black", 
     fg = "white", 
     pch = 20,
     col.axis = "white",
     col.lab = "white",
     col.main = "white" )

plot( x = CO2$Concentração, 
      y = CO2$Absorção,
      xlab = "Concentração",
      ylab = "Absorção",
      main = "Gráfico CO2"
      )

plot( 1:20, pch = 1:20 )

# gráfico de linha: 
plot( 1:10, type = "l" )
