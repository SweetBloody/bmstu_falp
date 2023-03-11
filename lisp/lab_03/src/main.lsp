; #1
(defun f1 (x)
(if (= (rem x 2) 0) x (+ x 1)))

(print (f1 15))

; #2
(defun f2 (x)
(if (>= x 0) (+ x 1) (- x 1)))

(print (f2 3))
(print (f2 -5))
(print (f2 0))

; #3
(defun f3 (x y)
(if (> x y) (list y x) (list x y)))

(print (f3 1 3))
(print (f3 3 1))
(print (f3 3 3))

; #4
(defun f4 (x y z)
(if (or (and (> x y) (< x z))
        (and (> x z) (< x y)))
    T
    Nil))

(print (f4 2 1 3))
(print (f4 1 1 1))
(print (f4 0 1 -1))
(print (f4 1 2 3))

; #6
(defun p6 (x y)
(>= x y))

(print (p6 3 4))
(print (p6 3 3))
(print (p6 3 2))

; #8
(defun f8_if (x y z)
(if (> x y)
    (if (< x z)
        T
        Nil)
    (if (> x z)
        T
        Nil)))

(defun f8_cond (x y z)
(cond ((> x y)
            (cond ((< x z) T)))
      ((< x y)
            (cond ((> x z) T)))
      (T Nil)))

(defun f8_and_or (x y z)
(or (and (> x y) (< x z))
    (and (> x z) (< x y))))

(print (f8_if 2 1 3))
(print (f8_if 1 1 1))
(print (f8_if 0 1 -1))
(print (f8_if 1 2 3))

(print (f8_cond 2 1 3))
(print (f8_cond 1 1 1))
(print (f8_cond 0 1 -1))
(print (f8_cond 1 2 3))

(print (f8_and_or 2 1 3))
(print (f8_and_or 1 1 1))
(print (f8_and_or 0 1 -1))
(print (f8_and_or 1 2 3))

; #9
(Defun how_alike_ifhow_alike (x y)
(cond ((or (= x y) (equal x y)) 'the_same)
      ((and (oddp x) (oddp y)) 'both_odd)
      ((and (evenp x) (evenp y)) 'both_even)
      (t 'difference) ) )

; Только с помощью if, and/or
(defun how_alike_if (x y)
(if (or (= x y) (equal x y))
        'the_same
        (if (and (oddp x) (oddp y))
                'both_odd
                (if (and (evenp x) (evenp y))
                        'both_even
                        'difference))))

(print (how_alike 2 2))
(print (how_alike 2 3))
(print (how_alike 5 3))
(print (how_alike 2 4))

(print (how_alike_if 2 2))
(print (how_alike_if 2 3))
(print (how_alike_if 5 3))
(print (how_alike_if 2 4))

