# chesteR - reunião 04

## Pacote esquisse

O seguinte código instala os pacotes (caso você não tenha instalado) e os carrega para utilização:
```R
pacotes <- c("ggplot2", "esquisse", "dplyr")

install_library <- lapply(pacotes,
FUN = function(x) {if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)
```
O código acima é equivalente a:
```R
install.packages("ggplot2")
install.packages("esquisse")
install.packages("dplyr")

library("ggplot2") #gerar gráficos por código
library("esquisse") #interface gráfica manual 
library("dplyr") #pacote de manipulação de dados
```
O segundo código é bem mais simples. No entanto, o primeiro uma vez construído, 
torna-se reprodutível em todas ocasiões, bastando alterar o nome dos `pacotes` que serão usados.

# RMarkdown

O Rmarkdown é outro tipo de script, que pode ser usado parar gerar documentos pdf e arquivos html. Geralmente é utilizado para combinar códigos em R com anotações características de relatórios.
Sendo assim, para gerar um arquivo Rmarkdown e começar as edições é necessário criar um novo arquivo:

![](/assets/rmarkdown.png)

O próprio arquivo gerado já vem com instruções de como utilizar o Rmarkdown.


Atalhos para Rmarkdown:

- código para criar bloco de código em R: `ctrl + alt + i`
- código para gerar o resultado do arquivo: `ctrl + shift + k`

O Rmarkdown pode ser uma alternativa para obter códigos em R com mais anotações, e no fim gerar um documento estático com essa combinação de código e texto.

## Gráfico com `esquisse`

Voltando para o tema principal...
É possível gerar gráficos usando o pacote `ggplot2` sem escrever o código do gráfico. Isso é possível através da interface gráfica interativa que o pacote `esquisse` nos proporciona. 

Para acessar a interface gráfica basta escrever:
```R
esquisser()
```
E logo a janela irá aparecer, sendo extremamente intuitiva o modo de usar. Com ela é possível criar gráficos a partir de dados gerados pelo usuário ou dados presentes na base do R ou em outros pacotes existentes.

![](/assets/esquisse.PNG)

Com essa interface nós geramos o seguinte código em `ggplot2` sem escrever 1 linha de código, apenas copiando e colando o código gerado pela interface gráfica de forma manual após selecionar os elementos e filtros de interesse (o `esquisse` utiliza o pacote `dplyr` para fazer as filtragens, por conta disso nós carregamos esse pacote).

```R
mtcars %>%
 filter(mpg >= 16.4 & mpg <= 34) %>%
 ggplot() +
 aes(x = mpg, y = drat, colour =as.factor(gear)) +
 geom_point(shape = "circle", size = 1.5) +
 scale_color_hue(direction = 1) +
 labs(x = "Miles per Galoon", title = "Gráfico bonito") +
 theme_minimal()
```
![](/assets/grafico_esquisse.png)

[Link](https://github.com/Gabrielforest/grupo_estudos_chesteR/blob/main/reuni%C3%B5es/encontro_04_esquisse_rmarkdown.R) com código em Rmarkdown completo gerado na reunião 04.
