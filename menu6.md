# chesteR - reunião 07


## Flexdashboard

`flexdashboard` é um pacote que nos permite criar simples dashboards através de um documento organizado em Rmarkdown. Sendo assim, uma alternativa de criação de documentos estáticos minimamente "interativos" com o usuário.

Para gerar esse tipo de painel é necessário instalar o pacote `flexdashboard`:

```R
install.packages("flexdashboard")
```

E então gerar um arquivo Rmarkdown (como vimos anteriormente), alterando o template inicial, como demonstrado na imagem abaixo:

![](/assets/template.png)

A partir desse documento padrão gerado, nós alteramos as informações iniciais de:

```yaml
---
title: "Untitled"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
---
```
Para:

```yaml
---
title: "encontro 07"
author: "Grupo de Estudos - chesteR"
date: "16/03/2022"
output: 
  flexdashboard::flex_dashboard:
    orientation: columns
    vertical_layout: fill
  theme: yeti
---
```

Isto foi feito com o intuito de deixar mais claro informações como o título, o autor, a data e o tema. 

Obs.: os temas disponíveis são: default, cerulean, journal, flatly, darkly, readable, spacelab, united, cosmo, lumen, paper, sandstone, simplex e yeti (o qual foi selecionado).


## Carregando Pacotes

Como estudado durante o nosso [quarto encontro](/menu4/), no primeiro bloco de código do Rmarkdown são definidos os arquivos e as variáveis que serão utilizadas durante todo o documento, e que não aparecerão no layout do nosso html. Isso se deve as especificações no início do nosso bloco de código `r setup, include=FALSE`, que já vieram definidas na criação do nosso flexdashboard. 

A partir disso, nós instalamos os pacotes que serão usados e os carregamos para utilização. Além disso, nós construímos nosso modelo linear com base no que foi alcançado durante o nosso [último encontro](/menu5/).

Obs.: o modelo será utilizado apenas para visualização gráfica como exemplificação, no entanto, mais detalhes sobre o mesmo pode ser encontrado no encontro anterior mencionado acima.

```R 
```{r setup, include=FALSE}
pacotes <- c("flexdashboard", "ISLR", "car", "olsrr")

install_library <- lapply(pacotes,
FUN = function(x) {if (!require(x, character.only = TRUE)) {
      install.packages(x, dependencies = TRUE)
      library(x, character.only = TRUE)
    }
  }
)

dados_venda <- Carseats

fit1 <- lm(formula = Sales ~ CompPrice + Income + Advertising + Price + ShelveLoc + Age + Income:Advertising, data = dados_venda)
´´´
```

A partir daí o nosso documento por padrão já apresentava o seguinte escopo:

![](/assets/flex.png)

Para termos uma ideia melhor do que está acontecendo a partir disso, podemos renderizar o documento usando `ctrl + shift + k`, e aparecerá na tela como está o resultado inicial do código (apresentado abaixo):

![](/assets/renderized_flex.png)

Como é possível observar nessa imagem, mais da metade da tela é representada pelo bloco `Chart A`. O qual é pertencente a coluna definida como 650 no código presente na linha 13 da imagem anterior `Column {data-width=650}`.

Já os blocos `Chart B` e `Chart C` estão contidos dentro da especificação presente na linha 22 `Column {data-width=350}`. 

Nesse momento, como você já pôde imaginar, a somatória das colunas é igual a 1000, sendo assim para dividir a tela ao meio basta alterar o número do tamanho das colunas para 500. Ademais, também é notável que o título está sendo representado logo abaixo da especificação de sua coluna, sendo possível inserir mais de um bloco dentro de uma coluna. E apesar dos blocos de código `{r}` estarem vazios, dentro deles podemos colocar códigos para serem dispostos dentro do seu respectivo bloco, assim como fizemos no nosso [quarto encontro](/menu4/). 

A partir daí alteramos o código chegando em:

![](/assets/final_flex_code.png)

sendo as novidades desse painel: a inserção de abas; uma imagem da Bahia baixada na internet que foi salva na mesma pasta que se encontra o script; os novos títulos e o gráfico do nosso modelo indicado lá no primeiro bloco de código plotado.

![](/assets/renderized_final_flex.png)


Observações:

- para criarmos abas é necessário usar o comando `===` como especificado nas linhas 26 e 55 do código, com o título da aba vindo logo acima disso;

- na linha 33 a especificação `echo=FALSE` indica que o comando escrito na linha 34 não deve aparecer no painel, apenas seu resultado. Ainda na linha 33, o comando `out.width="80%"` indica o tamanho da figura e o comando `fig.cap="BAHIA, RECEBA!"` a legenda da mesma. 

- o comando `echo=TRUE` na linha 39 indica que a conta que gera o resultado `2` deve ser demonstrada no painel.


O código completo do `flexdashboard` pode ser acessado no seguinte [link](https://github.com/Gabrielforest/grupo_estudos_chesteR/blob/main/reuni%C3%B5es/encontro_07_flexdashboard.html)




