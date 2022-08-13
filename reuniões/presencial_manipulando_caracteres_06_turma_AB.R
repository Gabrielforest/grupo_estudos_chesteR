#' --- 
#' title: Reunião presencial 06 - Turma AB - chesteR
#' subtitle: Manipulação de caracteres
#' author: Gabriel de Freitas Pereira
#' date: Agosto de 2022
#' ---

#' dados do R

data()

??mtcars()

#' operações com vetorização 

x <- c( 1:10 )

x + 2

h <- c( 1, 2, 3, "a" )
#' operação inválida

h + 2

#' lendo nomes de cada linha

rownames( mtcars )

#' lendo nome de uma linha específica

carro1 <- rownames( mtcars )[ 1 ]

#' não considera os nomes das linhas como coluna
mtcars[ 1, 1 ]

#' contando número de caracteres

nchar( carro1 )

# diferente de:

length( carro1 )

length( mtcars )

# criando tabela

tbl_pedidos <- data.frame( moletons = c( "P", "M", "G", "GG" ),
                           pedidos = c( 1, 14, 2, 10 ) )

View( tbl_pedidos )

length( tbl_pedidos )

arv <- read.csv2( file = "C:/Users/OppenSocial/Desktop/manejo_plantadas/aulas/aula_01/arvores.csv" )

length( arv )

#' colando caracteres com vetor

tamanhos <- tbl_pedidos[ , 1 ]

# equivalente a 

tamanhos <- c( "P", "M", "G", "GG" )

tamanhos[ 1 ]
tamanhos[ 2 ]


# -------------------------

pedidos <- tbl_pedidos[ , 2 ]

# equivalente a 

pedidos <- c( 1, 14, 2, 10 )

pedidos[ 1 ]
pedidos[ 2 ]

paste( tamanhos[ 1 ], "é o tamanho que escolhi" )  

paste( tamanhos[ 2 ], "foi pedido:", pedidos[ 2 ] )

#' lendo conteúdo de uma linha específica de uma coluna específica

tbl_pedidos[ 1, 1 ]

#' utilizando `paste` em formatação de resultados, com vetorização

atividades <- c( "tarefa da escola", "lavar louça", "limpar casa" )
numeros <- c( 1, 2, 3 )

paste( atividades, "- importância:", numeros )

#' utilizando separador específico

paste( atividades, "- importância:", numeros, collapse = " / " )

#' combinando números e caracteres com comando paste

paste( tamanhos[ 2 ], "foi pedido:", pedidos[ 2 ] )

#' loop para colar os resultados de cada coluna

rownames( mtcars )[ 1 ]
rownames( mtcars )[ 2 ]

#' passando para Kg
mtcars[ , 6 ] <- mtcars[ , 6 ] * 0.45 
mtcars[ , 6 ] <- mtcars[ , 6 ] * 1000 

#' formatando resultados

paste( rownames( mtcars )[ 1 ], "pesa em kg:" ,mtcars[ 1, 6 ] )
paste( rownames( mtcars )[ 2 ], "pesa em kg:" ,mtcars[ 2, 6 ] )
paste( rownames( mtcars )[ 3 ], "pesa em kg:" ,mtcars[ 3, 6 ] )

for ( i in 1:nrow( mtcars ) ) {
  
  print( paste( rownames( mtcars )[ i ], "pesa em kg:", mtcars[ i, 6 ] ) )

}

# equivalente a

for ( i in 1:32 ) {
  
  print( paste( rownames( mtcars )[ i ], "pesa em kg:", mtcars[ i, 6 ] ) )
  
}


