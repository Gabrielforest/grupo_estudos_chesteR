##############################
#     chesteR - reunião 06   #
##############################


library(ISLR); # pacote que contém os dados que serão estudados

# Regressão Linear --------------------------------------------------------

# comando para editar os dados (Permanentemente):
fix(Carseats)

# renomeando a base de dados:
dados_venda <- Carseats

# Criando o modelo de regressão linear entre as variáveis de venda de 
# cadeirinha de bebê 

fit1 <- lm(formula = Sales ~ ., data = dados_venda); summary(fit1)

fit1 <- update(fit1, ~ . - Population - Education - Urban - US); summary(fit1)

fit1 <- update(fit1, ~ . + Income:Advertising + Age:Price); summary(fit1)

fit1 <- update(fit1, ~ . - Age:Price); summary(fit1)

# fórmula usada:
lm(formula = Sales ~ CompPrice + Income + Advertising + Price + 
     ShelveLoc + Age + Income:Advertising, data = dados_venda)

# Premissas de uma regressão linear (LINE):
# L inearity 
# I ndependence
# N ormality
# E qual variance

plot(fit1)

#ou

olsrr::ols_plot_resid_fit(fit1)
olsrr::ols_plot_resid_qq(fit1)
olsrr::ols_plot_resid_hist(fit1)

# Interpretação dos gráficos:

# Residuals x Fitted values: demonstra se os resíduos têm padrões não lineares.

# Normal Q-Q: demonstra se os resíduos têm distribuição normal.  

# Scale Location: demonstra se os resíduos são distribuídos ao redor dos preditores.

# Residuals x Leverage: pontos fora dessa distância, alcançando o extremo superior direito
# ou inferior direito com linhas pontilhadas vermelhas nessa posições indicam não linearidade
# ou a presença de outliers.

library(olsrr)
library(car)
library(caret)

cor(Boston)

# testando normalidade:
olsrr::ols_test_normality(fit1)
# O teste de Shapiro-Wilk testa a normalidade.
# Logo, se o valor de p for igual ou menor que 0.05, a   
# hipótese de normalidade será rejeitada.

# Testando multicolinearidade (VIF > 10 representa colinearidade entre variáveis)
# que nem sempre é problemática, depende da situação na vida real.
car::vif(fit1)
# obs.: a multicolinearidade aumenta a variância dos coeficientes estimados.

# teste de heterocedasticidade Breusch-Pagan (LM requerem homocedasticidade)
car::ncvTest(fit1)  

