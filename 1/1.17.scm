(define (double n)
  (* n 2))

(define (halve n)
  (/ n 2))
         
(define (even? n)
  (= (remainder n 2) 0))

(define (fast-mult a b)
  (cond ((or (= b 0) (= a 0)) 0)
        ((even? b) (double (fast-mult a (halve b))))
        (else (+ a (fast-mult a (- b 1))))))
