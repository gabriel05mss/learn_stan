# learn_stan

Repositorio dedicado a atualizar os aprendizado de stan/rstan como ferramenta de inferencia bayesiana

## SUMÁRIO
-[Primeiro modelo](#Primeiro-modelo)

-[Segundo modelo](#Segundo-modelo)

-[Terçeiro modelo](#Terçeiro-modelo)

-[Contato](#Contato)




## Primeiro modelo

pasta: modelo_1

Este modelo estima a média e desvio padrão dos dados que segue distribuição N ~ ( $\mu$ , $\sigma^2$ )

Você pode trocar o tamanho da amostra ou o parametro $\sigma^2$ , para perceber como eles afetam a estimação feita pelo modelo.

-[back to sumário](#SUMÁRIO)



## Segundo modelo

pasta: modelo2

Este modelo estima média e desvio padrão dos dados que seguem distribuição N ~ ( $\mu$ , $\sigma^2$ ) usando $\sigma$ ~ $Cauchy\$(0 ,2.5) como priori.

Assim como o primeiro modelo voce pode trocar o parametro $\sigma$ e a priori para verificar como isso muda a estimativa do modelo

-[back to sumário](#SUMÁRIO)

## Terçeiro modelo

Essa familia de modelos são de regressão lineares cada um tem a sua diferença que sará explicada abaixo.


 - primeiramente definimos uma regressão linear, que é expressa dessa forma:

$$
y_i\ = \beta_0\ + \beta_1\ * x_i\ + \epsilon\
$$

sendo:
$\beta_0\$ o intercepto do modelo,

$\beta_1\$ o coeficiente angular,

$y\$ a variavel dependente,

$x\$ a variavel preditora,

$\epsilon\$ o erro aleatorio que possui distribuição N ~ (0, $\sigma^2\$ )

 - pasta: modelo3/ regressao simples

Agora iniciaremos a falar dos modelos propriamente dito, o modelo especificado na pasta acima é uma regressão cujo o $\sigma^2\$ é conhecido,

calculo das posterioris dos paranmetros:

prioris dos parametros:


$\beta_0\$ ~ N( $\mu_{\beta_0\}\$ , $\sigma^2_{\beta_0\}\$ )

$\beta_1\$ ~ N( $\mu_{\beta_1\}\$ , $\sigma^2_{\beta_1\}\$ )

X ~ N($\mu_x\$ , $\sigma^2_x\$ )

verossimilhança :

$y\$ | $\beta_0\$ , $\beta_1\$ , $x\$ ~ N($\beta_0\$ + $\beta_1\$ * $x\$ , $\sigma^2\$ )

Calculo de posteriori:

multipilica os nucleos das normais:

$$
 f\(\beta_0\ | y\ ) \propto \exp\frac{-1}{2}[\frac{(y - ( \beta_0 + \beta_1 * x))^2}{\sigma^2} + \frac{(\beta_0 - \mu_{\beta_0})^2}{\sigma^2_{\beta_0}}]
$$

dessa forma, a posteriori do $\beta_0\$ é:

$$
N ~ ( \frac{\sigma^2}{\sigma^2 + \sigma^2_{beta_0}}\mu_{\beta_0} + \frac{\sigma^2_{\beta_0}}{\sigma^2 + \sigma^2_{\beta_0}}\bar{y} , \frac{\sigma^2_{\beta_0} \sigma^2}{\sigma^2_{\beta_0} + \sigma^2} )
$$

essa distribuiição é identica a distribuição de $f\$($\beta_0\$ | $y\$ ) , trocando apenas o parametros.

-[back to sumário](#SUMÁRIO)

## Contato

email: gmoreira.siva2005@gmail.com

linkedin: www.linkedin.com/in/gabriel-moreira-73341a23b

-[back to sumário](#SUMÁRIO)
