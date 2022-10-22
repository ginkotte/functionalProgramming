;Gustavo Henrique Schneider Inkotte

; 1) Na  aula  disponível  em:  https://replit.com/@frankalcantara/ClojureAula2?v=1  foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  funções  e  apresentar  dois exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  precisam  ser  utilizados  de forma que o resutado da função possa ser visto no terminal.   

(println "Questão 1:")

; 1.1 -> assoc - Tem relação com a função de map, retorna um map que ja tem o mapeamento de chave e valor.
(println (format "Funcao assoc: Valor: %s; Resultado: %s"  "{:x 1 :y 2} :x 3" (str (assoc {:x 1 :y 2} :x 3))))
(println (format "Funcao assoc: Valor: %s; Resultado: %s"  "{:x 2 :y 3} :z 1" (str (assoc {:x 2 :y 3} :z 1))))

(println (format "Funcao dissoc: Valor: %s; Resultado: %s"  "{:x 1 :y 2} :y 3" (str (dissoc {:x 1 :y 2} :y 3))))
(println (format "Funcao dissoc: Valor: %s; Resultado: %s"  "{:x 1 :y 2} :x 2" (str (dissoc {:x 1 :y 2} :x 2))))

(println (format "Funcao range: Valor: %s; Resultado: %s"  "10 20" (str (range 10 20))))
(println (format "Funcao range: Valor: %s; Resultado: %s"  "20" (str (range 20))))

(println (format "Funcao map: Valor: %s; Resultado:"  " + [1 2 3] [3 2 1]") (map + [1 2 3] [3 2 1]))
(println (format "Funcao map: Valor: %s; Resultado:"  " - [4 5 6] [6 5 4]") (map - [4 5 6] [6 5 4]))

(println (format "Funcao inc: Valor: %s; Resultado: %s"  "0" (str (inc 0))))
(println (format "Funcao inc: Valor: %s; Resultado: %s"  "100" (str (inc 100))))

(println (format "Funcao filter: Valor: %s; Resultado:"  "impar (range 8))")  (filter odd? (range 8)))
(println (format "Funcao filter: Valor: %s; Resultado:"  "par (range 8))") (filter even? (range 8)))

(println (format "Funcao odd: Valor: %s; Resultado: %s"  "10" (str (odd? 10))))
(println (format "Funcao odd: Valor: %s; Resultado: %s"  "1" (str (odd? 1))))

(println (format "Funcao into: Valor: %s; Resultado: %s"  "[1 2 3] (4)" (str (into [1 2 3] '(4)))))
(println (format "Funcao into: Valor: %s; Resultado: %s"  "(3 2 1) (5 4)" (str (into [3 2 1] '(5 4)))))

(def arr ["Frank" "Funcional" 1000])
(println (format "Funcao nth: Valor: %s; Resultado: %s"  "0" (nth arr 0)))
(println (format "Funcao nth: Valor: %s; Resultado: %s"  "2" (nth arr 2)))

(println (format "Funcao conj: Valor: %s; Resultado: %s"  "[a b c] d" (str (conj ["a" "b" "c"] "d"))))
(println (format "Funcao conj: Valor: %s; Resultado: %s"  "[1 2 3] 4" (str (conj '[1 2 3] 4))))

(println (format "Funcao sort: Valor: %s; Resultado: %s"  "[1 23 4345 5678 2]" (str (sort [1 23 4345 5678 2]))))
(println (format "Funcao sort: Valor: %s; Resultado: %s"  " > [1 2 3]" (str (sort > [1 2 3]))))

(println (format "Funcao partition-by: Valor: %s; Resultado: "  "odd? [1 1 2 2 2 3 3 3]") (partition-by odd? [1 1 2 2 3 3 3]))
(println (format "Funcao partition-by: Valor: %s; Resultado: "  "even? [1 1 1 2 2 3]") (partition-by even? [1 1 1 2 2 3]))

(println (format "Funcao empty: Valor: %s; Resultado: %s"  "empty? ()" (str (empty? ()))))
(println (format "Funcao empty: Valor: %s; Resultado: %s"  "empty? (a)" (str (empty? '("a")))))

(println (format "Funcao count: Valor: %s; Resultado: %s"  "[1 2 3 4 5]" (str (count [1 2 3 4 5]))))
(println (format "Funcao count: Valor: %s; Resultado: %s"  "[12 32 123]" (str (count [12 32 123]))))

(println (format "Funcao char: Valor: %s; Resultado: "  "200") (char 200))
(println (format "Funcao char: Valor: %s; Resultado: "  "100") (char 100))

; 2) Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário.  

(println "\nQuestão 2:")

(defn ehPrimo [x]
  (if (<= x 1)
    false
    (if (<= x 3)
      true
      (if (and (zero? (mod x 2)) (zero? (mod x 3)))
        false
        true))))

(println (format "Funcao ehPrimo: Valor: %s; Resultado: %s"  "1" (str (ehPrimo 1))))
(println (format "Funcao ehPrimo: Valor: %s; Resultado: %s"  "10" (str (ehPrimo 10))))

; 3) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  fatoresPrimos  que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética.  

(println "\nQuestão 3:")

(defn ehPrimo [x]
  (if (<= x 1)
    false
    (if (<= x 3)
      true
      (if (and ((mod x 2)) ((mod x 3)))
        false
        true))))

(println (format "Função fatoresPrimos: Valor: %s; Resultado:"  "13") (fatoresPrimos 13))
(println (format "Função fatoresPrimos: Valor: %s; Resultado:"  "12") (fatoresPrimos 12))

; 4) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos  que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores.  

(println "\nQuestão 4:")

(defn todosPrimos [x1 x2] (loop [l (range x1 (+ x2 1)) l2 []] (if (empty? (rest l)) l2 (recur (rest l) (if (ehPrimo (nth l 0)) (conj l2 (nth l 0)) l2)))))

(println (format "Função todosPrimos: Valor: %s; Resultado:"  "2 13") (todosPrimos 2 13))
