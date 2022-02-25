# chesteR - reunião 01

## Funcionalidades Rstudio:

Gerando um novo arquivo de código R:

![](/assets/new_file_prt.png)

Definindo encoding UTF-8 como padrão:

|       Salvando       |  definindo UTF-8   |
|:--------------------:|:------------------:|
![](/assets/save_encoding.png) | ![](/assets/def_encoding.png) |

Título para sessões do código:

![](/assets/insert_section.png)

É possível utilizar atalhos para a maioria das funcionalidades do Rstudio. Por exemplo, para inserir título de uma sessão, pressionar as seguintes teclas em conjunto: ctrl + shift + R. Como demonstrado acima.

Alterar layout da forma que preferir:

![](/assets/layout.png)

A aba Plots - só fica disponível quando faço um gráfico:

```r
plot(c(1,2,3,4,5,6,7,8,9,10))
```

observação, o código acima é equivalente a:

``` 
plot(c(1:10))
```
os quais geram o seguinte gráfico:

![](/assets/plot_1_10.png)

Escolhendo diretório de trabalho, local no qual 
os arquivos de seu interesse estão localizados:

![](/assets/setwd.png)

ou escrever o diretório através do código, exemplo:

``` 
setwd("C:/Users/Gabriel/Desktop")
```

Outras abas e funcionalidades:

-   build - cria arquivos padrão em determinada tarefa

-   debug - forma como retorna o erro

-   profile - como a memória ta sendo usada

-   tools - útil para comandos do github (acesso ao terminal)

-   help -> cheatsheets -> (pdfs com várias informações)


Curiosidade, comando: alt + shift + K (atalhos de digitação)

## Operações Matemáticas Básicas

adição:

``` 
1+1
# ou
1 + 1
# ou
(1+1)
```

subtração:

``` 
1-1
# ou
1- 1
# ou
(1-1)
```

divisão:

``` 
2 / 2
```

multiplicação:

``` 
5 * 5
```

exponenciação pode ser feita de 2 modos, com \*\* ou \^

``` 
2**2
# ou 
2^2
```

resto de divisão %%

``` 
4%%2
```

## Criando variáveis

alt - (atalho pra definir variáveis)

``` 
amigão <- 2
```

definindo o preço do maracuja (variável):

``` 
maracuja <- 5
```

maracujaia "sinônimo" de maracuja:

``` 
maracujaia <- maracuja
```

alterei o preço do maracuja:

``` 
maracuja <- 6
```

concatenando variável (escrevendo mais de um valor)

``` 
maracuja <- c(6, 5)
```

exemplo de caracteres:

``` 
Variavel <- amigão         #erro, pois caracteres necessitam de "" para serem definidos

Variavel <- "amigão"       #correto
```

concatenando variável (escrevendo mais de um valor)

``` 
variavel <- c("amigão", "amiguinha")
```

variavel x e defini variavel como x

``` 
x <- "letra"   
Variavel <- x^2    # erro de formato da variavel (caractere nao faz operação matemática)
```

devido ao padrão do R, é possível tornar um vetor uma função:

``` 
c <- "amigão"  
c                 #retorna "amigão"
```

o que a variável c retornará no código seguinte?

``` 
c(1,2,3)
c                 #retorna "amigão" pois não salvamos o vetor c(1,2,3) em c
```

excluindo uma variável:

``` 
rm(c)
```

excluindo 2 variáveis:

``` 
rm(c, x)
```

excluindo todas as variáveis:

``` 
rm(list = ls())
```
