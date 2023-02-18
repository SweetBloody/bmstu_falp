; #1
; lambda
(lambda (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4)))

(print
((lambda (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4))) 1 2 3 4)
)

; func
(defun f1 (ar1 ar2 ar3 ar4) (list (list ar1 ar2) (list ar3 ar4)))

(print (f1 1 2 3 4))


; #2
; lambda
(lambda (ar1 ar2) (list (list ar1) (list ar2)))

(print
((lambda (ar1 ar2) (list (list ar1) (list ar2))) 1 2)
)

;func
(defun f2 (ar1 ar2) (list (list ar1) (list ar2)))

(print (f2 1 2))


; #3
; lambda
(lambda (ar1) (list (cons (list ar1) Nil)))

(print
((lambda (ar1) (list (cons (list ar1) Nil))) 1)
)

; func
(defun f3 (ar1) (list (cons (list ar1) Nil)))

(print (f3 1))




