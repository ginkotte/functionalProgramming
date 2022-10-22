;Gustavo Henrique Schneider Inkotte

; 1) Na  aula  disponível  em:  https://replit.com/@frankalcantara/ClojureAula2?v=1  foram destacadas diversas funções (expressões), como funções de primeira ordem, disponíveis em Clojure.  Sua  primeira  tarefa  será  descrever  cada  uma  destas  funções  e  apresentar  dois exemplos  de  uso  de  cada  uma  delas.  Lembre-se  os  exemplos  precisam  ser  utilizados  de forma que o resutado da função possa ser visto no terminal.   

(println "Questão 1:")

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

(println (format "Funcao empty: Valor: %s; Resultado: %s"  "empty? ()" (str (empty? ()))))
(println (format "Funcao empty: Valor: %s; Resultado: %s"  "empty? (a)" (str (empty? '("a")))))

(println (format "Funcao count: Valor: %s; Resultado: %s"  "[1 2 3]" (str (count [1 2 3]))))
(println (format "Funcao count: Valor: %s; Resultado: %s"  "[15 20 25 `a`]" (str (count [15 20 25 "a"]))))

(println (format "Funcao char: Valor: %s; Resultado: "  "200") (char 200))
(println (format "Funcao char: Valor: %s; Resultado: "  "100") (char 100))

; 2) Utilizando a linguagem Clojure, crie uma função chamada ehPrimo que receba um inteiro e devolva True caso este inteiro seja verdadeiro e False caso contrário.  

(println "\nQuestão 2:")

(defn ehPrimo [x]
  (loop [aux 1 arr []]
    (if (= aux (+ x 1))
      (if (= (count arr) 2) true false)
      (recur (inc aux)
             (if (zero? (mod x aux))
               (conj arr aux) arr)))))

(println (format "Funcao ehPrimo: Valor: %s; Resultado: %s"  "1" (str (ehPrimo 1))))
(println (format "Funcao ehPrimo: Valor: %s; Resultado: %s"  "11" (str (ehPrimo 11))))

; 3) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  fatoresPrimos  que  receba  um inteiro e devolva uma lista dos seus fatores primos. Decomposição em fatores primos é uma tarefa fundamental da aritmética.  

; 4) Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  todosPrimos  que  receba  dois valores inteiros e devolve todos os números primos que existam entre estes dois valores.  

(println "\nQuestão 4:")

(defn todosPrimos [x y]
  (loop [arr (range x (+ y 1)) arrAux []]
    (if (empty? (rest arr)) arrAux
        (recur (rest arr)
               (if (ehPrimo (nth arr 0))
                 (conj arrAux (nth arr 0)) arrAux)))))

(println (format "Função todosPrimos: Valor: %s; Resultado:"  "2 13") (todosPrimos 2 13))
