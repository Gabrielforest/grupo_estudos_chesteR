#' --- 
#' title: Reunião presencial 07 - Turma AB - chesteR
#' subtitle: Agregando informações
#' author: Gabriel de Freitas Pereira
#' date: Agosto de 2022
#' ---

#' dados de laranjeiras
data()
Orange

#' renomeando dados
laranja <- Orange

#' qual a média de idade das laranjeiras em dias?

mean( laranja$age )

#' qual a média de idade das laranjeiras em anos?

mean( laranja$age ) / 365

#' arredondando resultado

round( mean( laranja$age ) / 365 )

round( mean( laranja$age ) / 365, digits = 2 )

#' qual a média de circunferência das laranjeiras em centímetros?

mean( laranja$circumference )

#' # Agregações --------------

#' qual a média da circunferência por idade ?

# é possível separar os dados para fazer as contas:

laranja_idade_118 <- subset( laranja, age == 118 )
mean( laranja_idade_118$circumference )

laranja_idade_484 <- subset( laranja, age == 484 )
mean( laranja_idade_484$circumference )

# comando para encontrar os valores únicos 
x <- c( 1:10 )
y <- c( 1, 1, 2, 2, 2 )
unique( x )
unique( y )

unique( laranja$Tree )
unique( laranja$age )

# criar um loop para fazer isso 

idades <- unique( laranja$age )

for ( i in idades ) {
  
  v <- subset( laranja, age == i )[ 3 ]
  print( mean( v$circumference ) )

}

# ou usar a função aggregate

aggregate( circumference ~ age, laranja, mean )

# equivalente a 

aggregate( circumference ~ age, data = laranja, FUN = mean )

# calculando soma de circunferência por idade

aggregate( circumference ~ age, laranja, sum )

#' qual a média de circunferência da árvore 4 ?

subset( aggregate( circumference ~ age + Tree, laranja, mean ), Tree == 4 )

# equivalente a

circ_idade_arvore <- aggregate( circumference ~ age + Tree, laranja, mean )
subset( circ_idade_arvore, Tree == 4 )

# usando função personalizada

aggregate( circumference ~ age + Tree, laranja, function( x ) { x^2 } )

# exemplo de loop, que o R já faz.

letras <- c( "a1", "a2", "a3", "a4", "a5", "..." )

letras <- paste( "a", 1:10, sep = "" )

laranja$circumference + 1




