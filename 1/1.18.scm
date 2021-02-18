(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))
         
(define (even? n)
  (= (remainder n 2) 0))

(define (mult a b)
  (define (mult-iter x y z)
    (cond ((= y 0) z)
          ((even? y) (mult-iter (double x) (halve y) z))
          (else (mult-iter x (- y 1) (+ x z)))))
  (mult-iter a b 0))
