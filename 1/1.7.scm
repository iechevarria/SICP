; This gives a better solution for small values and it guarantees that the
; program will terminate

(define (square x) (* x x))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (= (improve guess x) guess))

(define (sqrt x)
  (sqrt-iter 1.0 x))
