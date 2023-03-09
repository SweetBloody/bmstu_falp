; #2
(defun gip (a b)
(sqrt (+ (* a a) (* b b))))

(print (gip 3 4))

; #4
(defun longer_than (a b)
(> (length a) (length b)))

(print (longer_than '(1 2 3 4 5) '(1 2 3 4)))

; #7
(defun f-to-c (temp)
(* (/ 5 9) (- temp 32.0)))

(print (f-to-c 451))

