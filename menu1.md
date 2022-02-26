# chesteR - reunião 01

## Funcionalidades Rstudio:

Gerando um novo arquivo de código R:

![](/assets/new_file_prt.png)

Definindo encoding UTF-8 como padrão:

|            Salvando            |        definindo UTF-8        |
|:------------------------------:|:-----------------------------:|
| ![](/assets/save_encoding.png) | ![](/assets/def_encoding.png) |

Título para sessões do código:

![](/assets/insert_section.png)

É possível utilizar atalhos para a maioria das funcionalidades do Rstudio. Por exemplo, para inserir título de uma sessão, pressionar as seguintes teclas em conjunto: ctrl + shift + R. Como demonstrado acima.

Alterar layout da forma que preferir:

![](/assets/layout.png)

A aba Plots - só fica disponível quando faço um gráfico:

```R
plot(c(1,2,3,4,5,6,7,8,9,10))
```

observação, o código acima é equivalente a:

```R
plot(c(1:10))
```

os quais geram o seguinte gráfico:

![](/assets/plot_1_10.png)

Escolhendo diretório de trabalho, local no qual os arquivos de seu interesse estão localizados:

![](/assets/setwd.png)

ou escrever o diretório através do código, exemplo:

```R
setwd("C:/Users/Gabriel/Desktop")
```

Outras abas e algumas de suas funcionalidades:

-   build - cria arquivos padrão em determinada tarefa

-   debug - forma como retorna o erro

-   profile - como a memória está sendo usada

-   tools - útil para comandos do github (acesso ao terminal)

-   help -> cheatsheets -> (pdfs com várias informações)

Curiosidade, comando: `alt + shift + K` (demonstra atalhos de digitação) do Rstudio.

## Operações Matemáticas Básicas

Adição:

```R
1+1
# ou
1 + 1
# ou
(1+1)
```
[1] 2

Subtração:

```R
1-1
# ou
1- 1
# ou
(1-1)
```
[1] 0


Divisão:

```R
2 / 2
```
[1] 1

Multiplicação:

```R
5 * 5
```
[1] 25

Exponenciação pode ser feita de 2 modos, com `**` ou `^`:

```R
2**2
# ou 
2^2
```
[1] 4

Resto de uma divisão %%:

```R
4%%2
```

## Criando variáveis

Atalho pra definir variáveis: `alt -`

Definindo a variável `amigão`
```R
amigão <- 2
```

Definindo o preço da variável `maracuja`:

```R
maracuja <- 5
```

`maracujaia` "sinônimo" de `maracuja`, ambas possuem o mesmo valor definido:

```R
maracujaia <- maracuja
```

Alterando o preço do `maracuja`:

```R
maracuja <- 6
```

Concatenando variável (escrevendo mais de um valor)

```R
maracuja <- c(6, 5)
```

Exemplo de caracteres:

```R
Variavel <- amigão         #erro, pois caracteres necessitam de "" para serem definidos

Variavel <- "amigão"       #correto
```

Concatenando variável (escrevendo mais de um valor)

```R
variavel <- c("amigão", "amiguinha")
```

Defini a variável `x` e defini uma nova variável que faz uma conta com a variável `x`:

```R
x <- "letra"   
Variavel <- x^2    # erro de formato da variável (caractere não faz operação matemática)
```
*Error in x^2 : non-numeric argument to binary operator*

Devido ao padrão do R, é possível tornar um vetor uma função:

```R
c <- "amigão"  
c                 #retorna "amigão"
```
[1] "amigão"

O que a variável c retornará no código seguinte?

```R
c(1,2,3)
c        #retorna "amigão" pois não salvamos o vetor c(1,2,3) em c
```
[1] "amigão"

Excluindo uma variável:

```R
rm(c)
```

Excluindo 2 variáveis:

```R
rm(c, x)
```

Excluindo todas as variáveis:

```R
rm(list = ls())
```
