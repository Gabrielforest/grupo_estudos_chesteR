# chesteR - reunião 03

## Pacote ggplot2

Instalando o pacote e carregando para utilizá-lo:
```R
install.packages("ggplot2")
library(ggplot2)
```
Observação: sempre que quisermos utilizar algum pacote após sua instalação 
é necessário utilizar a função `library()`.


## Composição dos gráficos no ggplot:

- data                        - dados
- aesthetic mapping           - eixos
- geometric object            - formato do gráfico
- statistical transformations - transformações (modelos, etc)
- scales                      - escala
- coordinate system           - coordenadas 
- position adjustments        - posições de elementos gráficos
                    
## Função `ggplot()` e sua sintaxe básica 

```R
ggplot(data = nome_tabela, mapping = aes(eixos)) +
  geom_
```

#### Estruturas de código para os gráficos mais comuns 

Gráfico de pontos:
```R
ggplot(data = , mapping = aes()) +
  geom_point() 
```
Gráfico de barra:
```R
ggplot(data, mapping = aes()) +
  geom_bar()
```
Gráfico de linha:
```R
ggplot(data, mapping = aes()) +
  geom_line()
```
Histograma:
```R
ggplot(data, mapping = aes()) +
  geom_histogram() 
```
## Exemplo

Exemplo de gráfico usando a base `mtcars`, a qual é uma tabela com dados de carros que o R já tem carregado assim que você baixa o software. 

Na base `mtcars` só temos variáveis numéricas:
```R
View(mtcars) #visualizando os dados da base 
```
Gráfico:
```R
ggplot(data = mtcars,
       mapping = aes(x = drat, y = mpg)) +
  geom_point()
```
![](/assets/gg_scatter.png)

Atalho para maximizar a tela do gráfico dentro do Rstudio: `ctrl + shift + 5`


#### Desenvolvendo melhor esse gráfico

colorindo o gráfico de acordo com a variável gear:
```R
ggplot(data = mtcars, 
       mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = gear))
```
![](/assets/gg_scatter_b.png)

Observação: Perceba que a estética dos pontos deve ser definida com a função `aes()`

Adicionando uma regressão linear e definindo `gear` como variável categórica, para obtermos os exatos níveis:
```R
grafico_1 <- 
  ggplot(data = mtcars,
         mapping = aes(x = mpg, y = drat)) +
  geom_point(aes(color = factor(gear))) +
  stat_smooth(method = "lm",
              col = "blue",
              se = FALSE,
              size = 1)
```
Argumentos especificados dentro de `stat_smooth()`: regressão linear (lm), cor da linha (col), não mostrar o erro padrão (se = FALSE), espessura da linha (size = 1).

Desse modo, nós salvamos o gráfico na variável `grafico_1`. E se quisermos adicionar outros elementos ao gráfico não é necessário escrever o seu código novamente, basta seguir acrescentando com o `+` de acordo com a sintaxe do `ggplot()`. Exemplo:

Adicionando título:
```R
grafico_1 + labs(title = "Gráfico mpg x drat")
```
![](/assets/gg_lm_scatter.png)

## Vantagens do pacote `ggplot2`: 

- qualquer tipo de gráfico que tu precisa fazer, alguém já fez e disponibilizou o código na internet.  
- todos os elementos gráficos são ajustáveis.
- sintaxe mais simples do que a função `plot()` quando se trata de gráficos mais robustos.