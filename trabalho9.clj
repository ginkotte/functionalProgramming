;; Gustavo Henrique Schneider Inkotte

;; Utilizando  a  linguagem  Clojure,  crie  uma  função  chamada  ultimo  que  receba  uma lista  e devolva o último elemento desta lista sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn ultimo [arr] (reduce (fn [a b] b) arr))

;; Utilizando a linguagem Clojure, crie uma função chamada penultimo que receba uma lista e  devolva  o  penúltimo  elemento  desta  lista  usar as  funções  já  prontas  e disponíveis para esta mesma finalidade na linguagem Clojure.  

(defn penultimo [arr] (reduce (fn [a b] b) (pop arr)))

;; Utilizando a linguagem Clojure, crie uma função chamada elementoN que receba uma lista e um inteiro N e devolva o  elemento que  está na  posição N desta lista usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn elementoN [arr n] (loop [counter n arr2 arr] (if (zero? counter) (first arr2) (recur (dec counter) (rest arr2)))))

;; Utilizando  a  linguagem Clojure,  crie  uma função  chamada  inverso  que  receba uma  lista  e devolva esta lista com as posições dos elementos invertidas. Por exemplo recebe [1,2,3] e devolve [3,2,1]. Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.

(defn inverso [arr] (reduce conj '() arr))

;; Utilizando a  linguagem Clojure, crie uma função chamada  mdc que receba  dois inteiros e devolve o mínimo divisor comum entre eles.  Sem usar as funções já prontas e disponíveis para esta mesma finalidade na linguagem Clojure.  

(defn mdc [a b] (if (zero? b) a (recur b (mod a b))))

;; Exemplos:

(println (format "Funcao 1: Entrada: %s; Saida: %s"  "[1 2 3]" (str (ultimo [1 2 3]))))

(println (format "Função 2: Entrada: %s; Saída: %s"  "[1 2 3]" (str (penultimo [1 2 3]))))

(println (format "Função 3: Entrada: %s; Saída: %s"  "[1 2 3], 0" (str (elementoN [1 2 3] 0))))

(println (format "Função: 4: Entrada: %s; Saída: %s"  "[1 2 3]" (str (inverso [1 2 3]))))

(println (format "Função: 5: Entrada: %s; Saída: %s"  "10 2" (str (mdc 10 2))))
