# chesteR - reunião 02

## Tipos Básicos de Variáveis 

- numeric
- integer
- logical
- character


Para identificar a classe da variável existe a função `class()`, exemplos:

```R
class(10)    
```
[1] "numeric"

Como vimos acima, o número representado não é considerado um inteiro no R, para ser considerado
um inteiro é necessário representar da seguinte maneira com a letra L: 

```R
class(10L)
```
[1] "integer"

Há diferenças entre os inteiros e os numéricos no R em relação ao espaço que eles ocupam na memória, os inteiros são mais leves, porém isso é significante
apenas quando os dados são extensos demasiadamente.


A classe de lógicos é representada de 4 formas:
```R
class(T)
class(F)
# ou
class(TRUE)
class(FALSE)
```
[1] "logical"

Já os caracteres são representados através
de aspas simples ou duplas, exemplo:
```R
class("variável")
class('Variável')
```
[1] "character"

Observações: convencionalmente são utilizadas aspas duplas no R, embora as simples sejam aceitas pelo software.

## Verificação do tipo de Variável 

É possível que não saibamos qual a classe da variável pois elas podem ser definidas de diferentes formas. 

Definindo variáveis que serão verificadas:
```R
var_a <- "5"

var_b <- 5

var_c <- 4.3

var_d <- "TRUE"
```

Teste de identificação:
```R
is.integer(var_a)   
```
[1] FALSE

A variável acima apesar de ser um número, ela foi definida entre aspas `var_a <- "5"`, logo ela foi salva como um caractere.


```R
is.character(var_b) 
```
[1] FALSE

A variável `var_b <- 5` é um numérico, lembrando que, se ela fosse definida da seguinte forma `var_b <- 5L` ela seria da 
classe de inteiros.

```R
is.numeric(var_c)   
```
[1] TRUE

A variável `var_c <- 4.3` também é um numérico.

```R
is.logical(var_d)   
```
[1] FALSE

A variável `var_d <- "TRUE"` não é um lógico
por ter sido definida entre aspas, o que a torna um caractere.

Obs.: o R possui diversas classes existentes, aqui foram abordadas as mais comuns e mais utilizadas. Sabendo disso, é importante saber que a função `is.` funciona em qualquer tipo de variável do R.

## Conversão de variáveis 

É possível converter determinadas variáveis (nem todas), veremos isso a seguir.

Para alterar uma variável é necessário redefini-la (salvar na memória do R a alteração). Iremos redefinir a variável `var_b <- 5` que é um numérico para um inteiro, e testar se funcionou:
```R
var_b <- as.integer(var_b) #redefinindo a variável

is.integer(var_b) 
```
[1] TRUE

A variável `var_a <- "5"` é um caractere que pode ser redefinido para inteiro ou numérico através da função `as.integer()` ou `as.numeric()`, como demonstrado a seguir:

```R
as.integer(var_a)
#ou 
as.numeric(var_a)

# ambas alterações acima funcionam, porém para salvar a alteração 
# fazemos a atribuição:
var_a <- as.integer(var_a)
#ou
var_a <- as.numeric(var_a)
```
Seguindo a mesma ideia, a variável `var_d <- "TRUE"` que é um caractere, aceita a alteração para lógico:
```R
as.logical(var_d) 
```
[1] TRUE

Alterar um numérico para inteiro também é possível através da função `as.integer()`, no entanto um arredondamento é feito de forma automática no R, exemplo:
```R
var_c <- 4.3
as.integer(var_c) 
```
[1] 4

Mais exemplos...

A variável definida abaixo não faz a conta, só salva como texto e a função `as.numeric()` não funciona nessa ocasião:
```R
var_a <- "5 + 5"

as.numeric(var_a)
```
[1] NA


## Atalhos:

Comentar variás linhas selecionadas de um código: ctrl + shift + c.      

Atalho da função `View()`: segura o ctrl e clica no nome da variável.






