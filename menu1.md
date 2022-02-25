+++
title = "Operações"
hascode = true
date = Date(2021, 8, 19)
rss = "A short description of the page which would serve as **blurb** in a `RSS` feed; you can use basic markdown here but the whole description string must be a single line (not a multiline string). Like this one for instance. Keep in mind that styling is minimal in RSS so for instance don't expect maths or fancy styling to work; images should be ok though: ![](https://upload.wikimedia.org/wikipedia/en/3/32/Rick_and_Morty_opening_credits.jpeg)"
+++

#     chesteR - reunião 01


## Funcionalidades Rstudio:

Definindo encoding padrão:

- aba File -> Reopen with enconding -> UTF-8 -> set as default 

Atalhos de digitação:

- aba Edit 

Título para sessões do código:

- aba Code -> ctrl + shift + R ### dar título

Alterar layout:

- aba View -> panes -> Pane Layout


- a aba Plots - só fica disponível quando faço um gráfico:

```r
plot(c(1,2,3,4,5,6,7,8,9,10))
```
observação, o código acima é equivalente a:
```r
plot(c(1:10))
```

Selecionando diretório de trabalho:

- session -> set working directory -> choose directory
ou
```r
setwd("C:/Users/Desktop")
```
Outras funcionalidades:

- build - cria arquivos padrão em determinada tarefa


- debug - forma como retorna o erro


- profile - como a memória ta sendo usada


- tools - usar comandos do github e do prompt de comando abrindo um terminal


- help -> cheatsheets -> (pdfs com várias informações)


- comando: alt + shift + K (atalhos das opções e digitação)



## Operações Matemáticas Básicas



adição:
```r
1+1
# ou
1 + 1
# ou
(1+1)
```

subtração:
```r 
1-1
# ou
1- 1
# ou
(1-1)
```

divisão:
```r
2 / 2
```

multiplicação:
```r
5 * 5
```

exponenciação pode ser feita de 2 modos, com ** ou ^
```r
2**2
# ou 
2^2
```

resto de divisão %%
```r
4%%2
```


## Criando variáveis

alt -  (atalho pra definir variáveis)
```r
amigão <- 2
```

definindo o preço do maracuja (variável):
```r
maracuja <- 5
```

maracujaia "sinônimo" de maracuja:
```r
maracujaia <- maracuja
```

alterei o preço do maracuja:
```r
maracuja <- 6
```

concatenando variável (escrevendo mais de um valor)
```r
maracuja <- c(6, 5)
```

exemplo de caracteres:
```r
Variavel <- amigão         #erro, pois caracteres necessitam de "" para serem definidos

Variavel <- "amigão"       #correto
```

concatenando variável (escrevendo mais de um valor)
```r
variavel <- c("amigão", "amiguinha")
```

variavel x e defini variavel como x
```r
x <- "letra"   
Variavel <- x^2    # erro de formato da variavel (caractere nao faz operação matemática)
```

devido ao padrão do R, é possível tornar um vetor uma função:
```r
c <- "amigão"  
c                 #retorna "amigão"
```

o que a variável c retornará no código seguinte?
```r
c(1,2,3)
c                 #retorna "amigão" pois não salvamos o vetor c(1,2,3) em c
```

excluindo uma variável:
```r
rm(c)
```

excluindo 2 variáveis:
```r
rm(c, x)
```

excluindo todas as variáveis:
```r
rm(list = ls())
```

