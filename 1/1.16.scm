(define (square x) (* x x))

(define (even? n)
  (= (remainder n 2) 0))

(define (exp x y)
  (define (exp-iter b n a)
    (cond ((= n 0) a)
          ((even? n) (exp-iter (square b) (/ n 2) a))
          (else (exp-iter b (- n 1) (* a b)))))
  (exp-iter x y 1))
