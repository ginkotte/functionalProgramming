import Text.Printf

--1. Escreva uma função chamada fatorialn que usando o operador range e a função foldrdevolva o fatorial de n.

fatorialn :: Integer -> Integer
fatorialn n = foldr (*) 1 [1 .. n]

--2. Usando a função map escreva uma função, chamada quadradoReal que recebe uma lista de números reais, positivos e negativos e devolva uma lista com o quadrado de cada um dos inteiros listados.

quadradoReal :: [Double] -> [Double]
quadradoReal x = map (^ 2) x

--3. Usando a função map escreva uma função, comprimentoPalavras que recebe uma lista de palavras e devolve uma lista com o comprimento de cada uma destas palavras.

comprimentoPalavras :: [String] -> [Int]
comprimentoPalavras x = map (length) x

--4. Usando a função filter escreva uma função, chamada maiorMultiploDe29 devolva o maior número entre 0 e 100000 que seja divisivel por 29.

maiorMultiploDe29 :: Integer
maiorMultiploDe29 = last (filter (\x -> ((x `mod` 29) == 0)) [0 .. 100000])

--5. Usando a função filter escreva uma função, chamada maiorMultiploDe que recebe um inteiro e devolva o maior número entre 0 e 100000 que seja divisivel por este inteiro.

maiorMultiploDe :: Integer -> Integer
maiorMultiploDe y = last (filter (\x -> ((x `mod` y) == 0)) [0 .. 100000])

--6. Usando Haskell e a função foldr defina uma função, chamada somaQuadrados que devolva  a soma dos quadrados dos itens de uma lista de números naturais de comprimento n. De tal forma que: 𝑠𝑜𝑚𝑎𝑄𝑢𝑎𝑑𝑟𝑎𝑑𝑜𝑠 = 1² + 2² + 3² + 4² . . . +𝑛2.

somaQuadrados :: Integer -> Integer
somaQuadrados n = foldr (\x y -> x * x + y) 0 [1 .. n]

--7. Usando Haskell e a função foldl defina uma função, chamada comprimento, que devolva o comprimento (cardinalidade) de uma lista dada.

comprimento :: [r] -> Integer
comprimento x = foldl (\x y -> x + 1) 0 x

main = do
  printf "Função 1: entrada::%d; resultado:%d\n" (5 :: Integer) (fatorialn 5)
  printf "Função 2: entrada::%s; resultado:%s\n" (show [1, -1, 2, -2, 7, -9]) (show (quadradoReal [1, -1, 2, -2, 7, -9]))
  printf "Função 3: entrada:%s; resultado:%s\n" (show ["teste", "exercicio", "três"]) (show (comprimentoPalavras ["teste", "exercicio", "três"]))
  printf "Função 4: entrada: --; resultado:%d\n" (maiorMultiploDe29)
  printf "Função 5: entrada:%d; resultado:%d\n" (12 :: Integer) (maiorMultiploDe 12)
  printf "Função 6: entrada:%d; resultado:%d\n" (5 :: Integer) (somaQuadrados 5)
  printf "Função 7: entrada:%s; resultado:%d\n" (show [1, 2, 3, 4, 5]) (comprimento [1, 2, 3, 4, 5])
