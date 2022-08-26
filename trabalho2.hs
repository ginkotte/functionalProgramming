import Text.Printf

--1. Escreva uma função para o cálculo dos números da sequência de Fibonacci, utilizando Haskell.

fibonacci :: Integer -> Integer
fibonacci x
  | x == 1 = 1
  | x == 2 = 1
  | otherwise = (fibonacci (x - 1)) + (fibonacci (x - 2))

--2. Um dos primeiros algoritmos documentados é o algoritmo para o cálculo do Maior Divisor Comum  (MDC)  de  Euclides  publicado  por  volta do  ano 300  AC.  Podemos simplificar  este algoritmo  dizendo  que  dados  dois  inteiros  A  e  B,  o  MDC  entre  eles  será dado  pelo  valor absoluto de A se B=0 e pelo MDC entre B e o resto da divisão de A por B se B>0. Escreva uma  função  para  o  cálculo  do  MDC  entre  dois  números  inteiros  positivos,  usando  o algoritmo de Euclides conforme apresentado aqui, utilizando Haskell.

mdc :: Integer -> Integer -> Integer
mdc a b
  | b == 0 = abs (a)
  | otherwise = (mdc b (a `mod` b))

--3. Escreva uma função recursiva que dado um número inteiro n, devolva a soma dos dígitos deste número. Exemplo: dado 1234 a função deverá devolver 10. Utilizando Haskell e recursividade

somaDigitos :: Integer -> Integer
somaDigitos n
  | div n 10 == 0 = n
  | otherwise = (somaDigitos (div n 10) + (n `mod` 10))

--4. Escreva uma função que devolva a soma de todos os números menores que 10000 que sejam múltiplos de 3 ou 5.

somaMultiplos :: Integer -> Integer
somaMultiplos x
  | x == 0 = 0
  | x == 10000 = (somaMultiplos 9999)
  | x `mod` 5 == 0 = x + (somaMultiplos (x - 1))
  | x `mod` 3 == 0 = x + (somaMultiplos (x - 1))
  | otherwise = (somaMultiplos (x - 1))

--7. Nem só de Fibonacci vivem os exemplos de recursão. Escreva uma função que devolva todos os números de uma sequência de Lucas (2, 1, 3, 4, 7, 11, 18, 29, 47, 76, 123) menores que um inteiro dado.

lucas x y z
  | z == 0 = [2]
  | z == 1 = [2] ++ [x]
  | otherwise = (lucas x y (z -1)) ++ [(x * (last (lucas x y (z -1))) - y * (last (lucas x y (z -2))))]

--8. Escreva uma função, chamada aoContrario em Haskel para reverter uma lista. Dado [1,2,3] devolva [3,2,1].

aoContrario :: [Integer] -> [Integer]
aoContrario x
  | x == [] = []
  | otherwise = (aoContrario (tail x)) ++ [head x]

--9. Escreva uma função chamada somaRecursiva que recebe dois valores inteiros e devolve o produto destes valores sem usar o operador de multiplicação.

somaRecursiva :: Integer -> Integer -> Integer
somaRecursiva x y
  | y == 0 = 0
  | otherwise = x + (somaRecursiva x (y -1))

--10. Escreva uma função chamada comprimento que receba uma lista de inteiros e devolva o comprimento desta lista. Observe que você não pode usar nenhuma função que já calcule o comprimento de uma lista.

comprimento :: [Integer] -> Integer
comprimento x
  | x == [] = 0
  | otherwise = 1 + (comprimento (init (x)))



main = do
  printf "Função 1: entrada:%d; resultado:%d\n\n" (10 :: Integer) (fibonacci 10)
  printf "Função 2: entrada:%d %d; resultado:%d\n\n" (10 :: Integer) (2 :: Integer) (mdc 10 2)
  printf "Função 3: entrada:%d; resultado:%d\n\n" (1234 :: Integer) (somaDigitos 1234)
  printf "Função 4: entrada:%d; resultado:%d\n\n" (10000 :: Integer) (somaMultiplos 10000)
  printf "Função 7: entrada:%d %d %d; resultado:%s\n\n" (1 :: Integer) (-1 :: Integer) (7 :: Integer) (show (lucas 1 (-1) 7))
  printf "Função 8: entrada:%s; resultado:%s\n\n" (show ([1, 2, 3])) (show (aoContrario [1, 2, 3]))
  printf "Função 9: entrada:%d %d; resultado:%d\n\n" (8 :: Integer) (6 :: Integer) (somaRecursiva 8 6)
  printf "Função 10: entrada:%s; resultado:%d\n\n" (show ([1, 8, 22, 84, 72, 38, 120])) (comprimento [1, 8, 22, 84, 72, 38, 120])
