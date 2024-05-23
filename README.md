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

pasta : modelo_3

Familias modelos de regressão linear , o primeiro feito com a variancia fixa tendo distribuição y ~ N( $\beta_0\$ + $\beta_1\$ * $x\$ , 1)

já o segundo usamos o uma distribuição a priori para a variancia, y ~ N( $\beta_0\$ + $\beta_1\$ * $x\$ , $\sigma\$) , sendo $\\sigma$ ~ $Cauchy\$ ( 0 , 2.5 )

-[back to sumário](#SUMÁRIO)

## Contato

email: gmoreira.siva2005@gmail.com

linkedin: www.linkedin.com/in/gabriel-moreira-73341a23b

-[back to sumário](#SUMÁRIO)
