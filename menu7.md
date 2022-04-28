# chesteR - reunião 08


## Listas, tabelas e funções apply

## Listas 

As listas são um tipo de classe existente no R. O qual permite organizarmos os 
dados da seguinte maneira:

```R
lista <- list(itens_limpeza = c("detergente", "amaciante", "sabão em pó"),
              itens_alimentacao =  c("alface", "soja", "pepino"),
              itens_farmacia = c("alfabisabolol", "predicim", "rivotril"))

lista
```

\$itens_limpeza

[1] "detergente"  "amaciante"   "sabão em pó"

\$itens_alimentacao

[1] "alface" "soja"   "pepino"

\$itens_farmacia

[1] "alfabisabolol" "predicim"      "rivotril"  

## Tabelas 

As tabelas são um outro tipo de classe existente no R. Essa classe é denominada de `data.frame`.
Um exemplo foi construído abaixo:

```R
tabela <- data.frame(itens_limpeza = c("detergente", "amaciante", "sabão em pó"),
                     itens_alimentacao =  c("alface", "soja", "pepino"),
                     itens_farmacia = c("alfabisabolol", "predicim", "rivotril"))
View(tabela)
```
![](/assets/market_dataframe.png)

Obs.: Esses tópicos são continuamente abordados durante os encontros, e considerações serão feitas com o surgimento de novos manejos necessários...

A partir disso, como comentado em outros encontros, o R possui tabelas nativamente disponíveis. E para visualizar quais são elas, utilizamos o seguinte comando:

```R
data()
```
![](/assets/dataset_base_r.png)

Sendo assim, iremos utilizar 1 dessas tabelas, que é a `iris`, bastante comum na comunidade R. 
Essa tabela (data.frame) apresenta dados referentes a 3 espécies de plantas e algumas de suas características. Portanto, visando facilitar o entendimento, atribuí um novo nome para essa tabela:

```R
dados_plantas <- iris
class(dados_plantas)
```
[1] "data.frame"

Visualizando esse data.frame:

```R
View(dados_plantas)
```
![](/assets/view_iris.png)

## Família de funções apply 

`apply` - retorna um vetor, através de um método que foge dos loops convencionais
em programação, os quais serão discutidos futuramente... 

Através dessa função é possível obtermos a média por colunas dos dados que estamos investigando, de forma rápida e simples:

```R
apply(X = dados_plantas[,1:4], MARGIN = 2, FUN = mean)
```
Sepal.Length  Sepal.Width  Petal.Length  Petal.Width 

5.843333 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.057333 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3.758000 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1.199333

O primeiro argumento da função `X` determina quais dados serão usados, nesse caso 
selecionamos apenas as colunas numéricas dos dados das plantas para fazermos a média, as colunas numéricas vão de 1 até 4 como foi possível observar acima através da visualização do nosso data.frame. Por isso `dados_plantas[,1:4]` seleciona todas as linhas da tabela (especificação antes da vírgula) e as colunas de 1 até 4 (especificação depois da vírgula). Já o segundo argumento da função `MARGIN` pode ser igual a 2 quando queremos fazer a conta por colunas, ou 1 quando queremos fazer a operação por linhas. E por final o argumento `FUN` representa a função que será usada (nesse caso a função `mean`).

Exemplo da média por linhas:

```R
apply(X = dados_plantas[,1:4], MARGIN = 1, FUN = mean)
```
[1] 2.550 2.375 2.350 2.350 2.550 2.850 2.425 2.525 2.225 2.400 2.700 2.500  

[13] 2.325 2.125 2.800 3.000 2.750 2.575 2.875 2.675 2.675 2.675 2.350 2.650 

[25] 2.575 2.450 2.600 2.600 2.550 2.425 2.425 2.675 2.725 2.825 2.425 2.400  

[37] 2.625 2.500 2.225 2.550 2.525 2.100 2.275 2.675 2.800 2.375 2.675 2.350  

[49] 2.675 2.475 4.075 3.900 4.100 3.275 3.850 3.575 3.975 2.900 3.850 3.300  

[61] 2.875 3.650 3.300 3.775 3.350 3.900 3.650 3.400 3.600 3.275 3.925 3.550  

[73] 3.800 3.700 3.725 3.850 3.950 4.100 3.725 3.200 3.200 3.150 3.400 3.850  

[85] 3.600 3.875 4.000 3.575 3.500 3.325 3.425 3.775 3.400 2.900 3.450 3.525  

[97] 3.525 3.675 2.925 3.475 4.525 3.875 4.525 4.150 4.375 4.825 3.400 4.575  

[109] 4.200 4.850 4.200 4.075 4.350 3.800 4.025 4.300 4.200 5.100 4.875 3.675  

[121] 4.525 3.825 4.800 3.925 4.450 4.550 3.900 3.950 4.225 4.400 4.550 5.025  

[133] 4.250 3.925 3.925 4.775 4.425 4.200 3.900 4.375 4.450 4.350 3.875 4.550  

[145] 4.550 4.300 3.925 4.175 4.325 3.950  

Como a tabela possui 150 linhas, esse comando retornou um vetor com 150 resultados.

`lapply` - semelhante ao `apply`, no entanto retorna o resultado organizado em lista
ao invés de vetor. Exemplo:

```R
lapply(X = dados_plantas, FUN = class)
```
\$Sepal.Length

[1] "numeric"

\$Sepal.Width

[1] "numeric"

\$Petal.Length

[1] "numeric"

\$Petal.Width

[1] "numeric"

\$Species

[1] "factor"

Também é possível a criação de funções personalizadas com o intuito de aplicá-las 
dentro das funções da família `apply`. Veja a seguir exemplos de funções básicas: 
```R
somatoria <- function(x , y) {x + y}
somatoria(x = 1, y = 2)
```
[1] 3

Como foi observado acima, a sintaxe das funções no R seguem o seguinte padrão: `function() {}`. Desse modo, o que é inserido entre parênteses representa os argumentos que o usuário irá inserir, e entre chaves o escopo que a função irá executar. Logo, a função `somatoria` criada requere 2 números que serão somados, equivalente a forma simplificada da função `sum` já existente no R.

Outro exemplo de função:
```R
oi <- function(nome) {paste0("oi ", nome)}
oi(nome = "Gabriel")
```
[1] "oi Gabriel"

A função `oi` criada acima usa a função `paste0` para colar a mensagem "oi " com o nome que o usuário irá inserir.

Usando função personalizada com lapply:
```R
lapply(X = dados_plantas, FUN = function(x) {mean(x) + 1})
```
\$Sepal.Length

[1] 6.843333

\$Sepal.Width

[1] 4.057333

\$Petal.Length

[1] 4.758

\$Petal.Width

[1] 2.199333

\$Species

[1] NA

Warning message:
In mean.default(x) : argumento não é numérico nem lógico: retornando NA

  
A função acima soma 1 para a média de cada coluna da nossa tabela, e como a
espécie é um fator é retornado um aviso do porquê não foi realizado a operação
nessa coluna.

`sapply` - retorna um vetor ou matriz, simplificando o resultado do `lapply`. Exemplos:

```R
sapply(X = dados_plantas, FUN = class)
```
Sepal.Length  Sepal.Width Petal.Length  Petal.Width      Species 

   "numeric"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    "numeric"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     "numeric"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     "numeric"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;      "factor"


```R
sapply(X = dados_plantas, FUN = levels)
```
\$Sepal.Length

NULL

\$Sepal.Width

NULL

\$Petal.Length

NULL

\$Petal.Width

NULL

\$Species

[1] "setosa"     "versicolor" "virginica" 

Na função acima, utilizamos `levels` para indicar quais são as categorias de cada
variável (coluna). E como foi observado, apenas a coluna de espécies apresentou resultados, por ser a única coluna categórica.  

`mapply` - é uma versão multivariada do apply, com ela podemos usar múltiplos argumentos.
Exemplos: 

```R
mapply(FUN = somatoria, x = dados_plantas$Sepal.Length, y = dados_plantas$Sepal.Width) 
```

[1]  8.6  7.9  7.9  7.7  8.6  9.3  8.0  8.4  7.3  8.0  9.1  8.2  7.8  7.3

[15]  9.8 10.1  9.3  8.6  9.5  8.9  8.8  8.8  8.2  8.4  8.2  8.0  8.4  8.7

[29]  8.6  7.9  7.9  8.8  9.3  9.7  8.0  8.2  9.0  8.5  7.4  8.5  8.5  6.8

[43]  7.6  8.5  8.9  7.8  8.9  7.8  9.0  8.3 10.2  9.6 10.0  7.8  9.3  8.5

[57]  9.6  7.3  9.5  7.9  7.0  8.9  8.2  9.0  8.5  9.8  8.6  8.5  8.4  8.1

[71]  9.1  8.9  8.8  8.9  9.3  9.6  9.6  9.7  8.9  8.3  7.9  7.9  8.5  8.7

[85]  8.4  9.4  9.8  8.6  8.6  8.0  8.1  9.1  8.4  7.3  8.3  8.7  8.6  9.1

[99]  7.6  8.5  9.6  8.5 10.1  9.2  9.5 10.6  7.4 10.2  9.2 10.8  9.7  9.1

[113]  9.8  8.2  8.6  9.6  9.5 11.5 10.3  8.2 10.1  8.4 10.5  9.0 10.0 10.4

[127]  9.0  9.1  9.2 10.2 10.2 11.7  9.2  9.1  8.7 10.7  9.7  9.5  9.0 10.0

[141]  9.8 10.0  8.5 10.0 10.0  9.7  8.8  9.5  9.6  8.9

Através da função acima, foi possível aplicar a função que criamos `somatoria` para
somar 2 colunas por cada linha!

`tapply` - aplica uma função para um grupo nivelado, com isso é possível obter resultados por agrupamentos, os quais serão mais discutidos no próximo encontro. Exemplo:

```R
tapply(X = dados_plantas$Sepal.Length, INDEX = dados_plantas$Species, FUN = min)
```

setosa versicolor  virginica 
 
4.3 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       4.9 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;       4.9 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 


## Resumindo:

- apply: Aplicar função nas margens de um array.

- lapply: Faz um loop em uma lista e avalia uma função em cada elemento.

- sapply: O mesmo que lapply, mas tenta simplificar o resultado.

- mapply: versão multivariada do lapply (isto é, aceita mais de um argumento).

- tapply: aplicar uma função sobre subconjuntos de um vetor.