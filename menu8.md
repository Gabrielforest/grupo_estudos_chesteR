# chesteR - reunião 09


## Operações por agrupamentos

Abaixo está o `data.frame` que seguiremos utilizando (nativo do R):
```R
names(iris)
```
[1] "Sepal.Length" "Sepal.Width" 

[3] "Petal.Length" "Petal.Width" 

[5] "Species"

Como vimos no encontro anterior `tapply` pode realizar algumas operações por agrupamento. Exemplo:
```R
tapply(X = iris$Petal.Width, INDEX = iris$Species, FUN = mean)
```
setosa versicolor  virginica 
 
0.246 &nbsp;&nbsp;&nbsp;&nbsp;       1.326 &nbsp;&nbsp;&nbsp;&nbsp;       2.026 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

Outra forma de fazer isso seria recebendo o resultado em forma de tabela:
```R
aggregate(Petal.Width ~ Species, data = iris, FUN = mean)
```

&nbsp;&nbsp;&nbsp;&nbsp; Species &nbsp;&nbsp;&nbsp;&nbsp; Petal.Width

1  &nbsp;&nbsp;&nbsp;&nbsp;   setosa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      0.246

2 &nbsp;&nbsp;&nbsp;&nbsp; versicolor &nbsp;&nbsp;&nbsp;&nbsp;       1.326

3  &nbsp;&nbsp;&nbsp;&nbsp; virginica &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       2.026



A função `aggregate` é designada para trabalhar com várias colunas 
e retornar um `data.frame` com uma linha para cada categoria, 
enquanto a `tapply` é designada para ser usada com vetores (uma única coluna) 
retornando uma matriz.

Dentre essas funções, qual seria a opção mais rápida? 

Para descobrir, foi construída a seguinte função, com as especificações do passo a passo dentro dela:
```R
clock <- function(f) {
  
  # registro do tempo inicial
  tic <- Sys.time()
  
  # função que iremos testar
  f
  
  # registro do tempo final
  toc <- Sys.time()
  
  # tempo que a função gastou para rodar (tf-ti)
  time <- toc - tic
  
  # retornando o resultado da função e o tempo que ela levou, através de uma lista
  list(f, time)
  
}
```
Aplicando a função nos 2 métodos:

```R
clock(tapply(X = iris$Petal.Width, INDEX = iris$Species, FUN = mean))
```
[[1]]

setosa versicolor  virginica 
 
0.246 &nbsp;&nbsp;&nbsp;&nbsp;       1.326 &nbsp;&nbsp;&nbsp;&nbsp;       2.026 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

[[2]]

Time difference of 0.0009338856 secs


```R
clock(aggregate(Petal.Width ~ Species, data = iris, FUN = mean))
```

[[1]]
 
 &nbsp;&nbsp;&nbsp;&nbsp; Species &nbsp;&nbsp;&nbsp;&nbsp; Petal.Width

1  &nbsp;&nbsp;&nbsp;&nbsp;   setosa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      0.246

2 &nbsp;&nbsp;&nbsp;&nbsp; versicolor &nbsp;&nbsp;&nbsp;&nbsp;       1.326

3  &nbsp;&nbsp;&nbsp;&nbsp; virginica &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       2.026


[[2]]

Time difference of 0.002429008 secs


Logo, como foi visto acima, a função `tapply` é mais rápida! Isso no geral irá ocorrer, ou seja, operações com vetores tendem a ser mais rápidas do que aquelas que envolvem tabelas.

Obs.: Existem outras maneiras mais eficientes
de se obter o exato tempo que leva cada função, mas essa é bastante clara e 
aborda o tópico de funções que começamos a ver no último encontro.

Outros usos da função aggregate, que explicitam suas vantagens:
```R
aggregate(cbind(iris$Petal.Length, iris$Petal.Width), by = list(iris$Species), FUN = mean)
```

&nbsp;&nbsp;&nbsp;&nbsp; Group.1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   V1    &nbsp;&nbsp;&nbsp;&nbsp; V2

1 &nbsp;&nbsp;&nbsp;&nbsp; setosa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.462 0.246

2 &nbsp;&nbsp;&nbsp;&nbsp; versicolor &nbsp;&nbsp;&nbsp;&nbsp;  4.260 1.326

3 &nbsp;&nbsp;&nbsp;&nbsp; virginica  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  5.552 2.026

Existe outra maneira de escrever o mesmo código de maneira simplificada, e o resultado será apresentado abaixo com uma pequena diferença, pois esse método já retorna o nome original das colunas (o que facilita a compreensão do resultado):
```R
aggregate(cbind(Petal.Length, Petal.Width) ~ Species, data = iris, FUN = mean)
```
&nbsp;&nbsp;&nbsp;&nbsp; Species &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   Petal.Length   &nbsp;&nbsp;&nbsp;&nbsp; Petal.Width

1 &nbsp;&nbsp;&nbsp;&nbsp; setosa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  1.462 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   0.246

2 &nbsp;&nbsp;&nbsp;&nbsp; versicolor &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  4.260 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.326

3 &nbsp;&nbsp;&nbsp;&nbsp; virginica  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  5.552 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.026

Nas 2 funções acima nós combinamos as colunas através da função `cbind` gerando a média por espécies das variáveis especificadas (`Petal.Length` e `Petal.Width`). Perceba que as funções se diferem no modo de chamar as variáveis. A primeira função exige que o agrupamento seja feito por lista através do argumento `by`. A segunda função utiliza o formato de fórmula que vimos no [sexto encontro](/menu5/). 

Exemplo contando o número de vezes que ocorre cada espécie:
```R
aggregate(iris$Species, by = list(iris$Species), FUN = length)
```

&nbsp;&nbsp;&nbsp;&nbsp; Group.1 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   x    

1 &nbsp;&nbsp;&nbsp;&nbsp; setosa &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 50

2 &nbsp;&nbsp;&nbsp;&nbsp; versicolor &nbsp;&nbsp;&nbsp;&nbsp;  50 

3 &nbsp;&nbsp;&nbsp;&nbsp; virginica  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  50


No entanto, a forma mais eficiente e fácil de se fazer isso seria através da função table:
```R
table(iris$Species)
```

setosa versicolor  virginica 
 
50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       50 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 

Com isso, podemos analisar tabelas e vetores que possuem categorias de forma rápida e eficiente!