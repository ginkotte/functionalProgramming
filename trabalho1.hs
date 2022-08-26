-- Gustavo Henrique Schneider Inkotte

import Text.Printf
-- Escreva uma função chamada soma1 que recebe um inteiro como argumento e retorna um inteiro uma unidade maior que a entrada. 
soma1 :: Integer -> Integer
soma1 x = x+1  

-- Escreva  uma  função  chamada  sempre  que,  não  importando  o  valor  de  entrada,  devolva sempre zero. Observe que neste caso a entrada pode ser de qualquer tipo. 
sempre :: x -> Integer
sempre y = 0

-- Escreva  uma  função  chamada  treco  que  receba  três  valores  em  ponto  flutuantes  com precisão dupla e retorne o resultado da soma dos dois primeiros multiplicado pelo terceiro.
treco :: Double -> Double -> Double -> Double
treco val1 val2 val3 = (val1 + val2) * val3

-- Escreva uma função chamada resto que devolva o resto de uma divisão entre dois números inteiros.

resto :: Integer -> Integer -> Integer
resto val1 val2 = val1 `mod` val2

-- Escreva uma função chamada precoMaior que devolva o maior valor entre quatro valores monetários.
precoMaior :: Double -> Double -> Double -> Double -> Double 
precoMaior val1 val2 val3 val4 = max (max val1 val2) (max val3 val4)

-- Escreva uma função chamada impar que devolva True, sempre que o resultado do produto de dois números inteiros for ímpar. 
impar :: Integer -> Integer -> Bool
impar val1 val2 = if  val1 * val2 `mod` 2 /= 0 then True else False


-- Em Haskell existe o tipo par cuja assinatura tem a seguinte forma: 𝑝𝑎𝑟 ∷ (𝐼𝑛𝑡,𝐼𝑛𝑡). Escreva uma função em Haskell que devolva a soma dos componentes de um par de inteiros.
somaPar :: (Integer, Integer) -> Integer
somaPar par = fst par + snd par


-- Escreva uma função em Haskell que receba números reais (double) e devolva o resultado da equação 𝑥2 +𝑦 2 +𝑧.
equacao :: Double -> Double -> Double -> Double
equacao x y z = x^2 + y / 2 + z 

-- Escreva uma função em Haskell chamada diagnostico que receba o peso do aluno e imprima um diagnóstico de obesidade, segundo a tabela que pode ser encontrada no link: Sobrepeso, obesidade e obesidade mórbida: entenda a diferença entre os três termos (cuidadospelavida.com.br). Observe que este diagnóstico é meramente estatístico e não tem nenhum valor real, está sendo usado nesta questão apenas para a definição das faixas. Todo e qualquer diagnóstico deve ser feito por um profissional médico 
diagnostico :: Double -> String
diagnostico peso 
  |peso/1.9^2<17 = "Muito Abaixo do peso"
  |peso/1.9^2<=18.49 = "Abaixo do peso"
  |peso/1.9^2<=24.99 = "Peso normal"
  |peso/1.9^2<=29.99 = "Sobrepeso"
  |peso/1.9^2<=34.99 = "Obesidade leve"
  |peso/1.9^2<=39.99 = "Obesidade severa"
  |otherwise ="Obesidade mórbida"

main = do
  printf"Função 1: entrada:%d; resultado:%d\n\n" (9::Integer) (soma1 9)
  printf "Função 2: entrada:%d; resultado:%d\n\n" (1000::Integer) (sempre 1000)
  printf "Função 3: entrada:%f %f %f; resultado:%f\n\n" (5::Double) (5::Double) (10::Double) (treco 5.0 5.0 10.0)
  printf "Função 4: entrada:%d %d; resultado:%d\n\n" (5::Integer) (2::Integer) (resto 3 2)
  printf "Função 5: entrada:%f %f %f %f; resultado:%f\n\n" (23.99::Double) (12.00::Double) (38.50::Double) (199.99::Double)(precoMaior 23.99 12.0 38.50 199.99)
  printf "Função 6: entrada:%d %d; resultado:%s\n\n" (3::Integer) (3::Integer) (show (impar 3 3))
  printf "Função sem numero: entrada:(%d,%d); resultado:%d\n\n" (1::Integer) (2::Integer) (somaPar (1,2))
  printf "Função 7: entrada:%f %f %f; resultado:%f\n\n" (5::Double) (12::Double) (3::Double) (equacao 5 12 3)
  printf "Função 8: entrada:%f; resultado:%s\n\n" (75::Double) (diagnostico 75)
