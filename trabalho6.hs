-- Gustavo Henrique Schneider Inkotte

import Data.Char
import Text.Printf

-- 1) Usando List Comprehension escreva uma função, chamada divisoresden, que devolva uma lista dos divisores de um número dado.

divisoresden :: Integer -> [Integer]
divisoresden n = [x | x <- [1..n], (n `mod` x) == 0]

-- 2) Usando  List Comprehension  escreva  uma  função,  chamada  contaCaractere,  que  conte  a ocorrência de um caractere específico, em uma string dada.

contaCaractere :: String -> Char -> Int
contaCaractere str x = length [y | y <- str, (toLower y) == (toLower x)]

-- 3) Usando List Comprehension escreva uma função, chamada dobroNaoNegativo, que devolve o dobro dos valores dos elementos não negativos da lista de inteiros dada.

dobroNaoNegativo :: [Integer] -> [Integer]
dobroNaoNegativo list = [x * 2 | x <- list, x > 0]

-- 4) Usando List Comprehension escreva uma função, chamada pitagoras, que devolva uma lista de triplas, não repetidas, contendo os lados dos triângulos retângulos possíveis de serem construídos por inteiros entre 1 e um número inteiro dado.

pitagoras :: Integer -> [(Integer, Integer, Integer)]
pitagoras list = [(x, y, z) | x <- [1 .. list], y <- [1 .. list], z <- [1 .. list], ((x ^ 2) + (y ^ 2)) == (z ^ 2), z > x, z > y, y > x]

-- 5) Números  perfeitos  são  aqueles  cuja  soma  dos  seus  divisores  é  igual  ao  próprio  número. Usando List Comprehension escreva uma função, chamada numerosPerfeitos, que devolva uma lista contendo todos os números perfeitos menores que um número dado. Lembre-se que você já tem uma função que devolve uma lista dos divisores de um número dado.

numerosPerfeitos :: Integer -> [Integer]
numerosPerfeitos x = [y | y <- [1 .. x], sum (init (divisoresden y)) == y]

-- 6) Usando List Comprehension escreva uma função, chamada produtoEscalar, que devolva o produto escalar entre duas listas de inteiros. Lembre-se, existem as funções fst, snd e zip no prelude que podem ser úteis.

produtoEscalar :: [Integer] -> [Integer] -> Integer
produtoEscalar list1 list2 = sum [x * y | (x, y) <- zip list1 list2]

-- 8) Usando  List Comprehension  escreva  uma  função,  chamada  paresOrdenados,  que  devolva uma  lista  de  par  ordenados  contendo  uma  potência  de  2  e  uma  potência  de  3  até  um determinado número dado. Observe que estes números podem ser bem grandes.

paresOrdenados :: Integer -> [(Double, Double)]
paresOrdenados list = [(2 ^ x, 3 ^ x) | x <- [0 .. list]]

main = do
  printf "Função 1: entrada: %d; resultado: %s \n \n" (20 :: Int) (show (divisoresden 20))
  printf "Função 2: entrada: %s, %s; resultado: %s \n \n" ("agostinho Carrara" :: String) ("a" :: String) (show (contaCaractere "agostinho Carrara" 'a'))
  printf "Função 3: entrada: %s; resultado: %s \n \n" (show [-10 .. 10]) (show (dobroNaoNegativo [-10 .. 10]))
  printf "Função 4: entrada: %d; resultado: %s \n \n" (10 :: Int) (show (pitagoras 10))
  printf "Função 5: entrada: %d; resultado: %s \n \n" (1000 :: Int) (show (numerosPerfeitos 1000))
  printf "Função 6: entrada: %s, %s; resultado: %s \n \n" (show [10 .. 20]) (show [10 .. 20]) (show (produtoEscalar [10 .. 20] [10 .. 20]))
  printf "Função 8: entrada: %d; resultado: %s \n \n" (10 :: Int) (show (paresOrdenados 10))
