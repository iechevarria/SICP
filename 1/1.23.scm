(define (square n) (* n n))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (next test-divisor)
  (if (= test-divisor 2)
      3
      (+ test-divisor 2)))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
  (= (smallest-divisor n) n))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime n (- (runtime) start-time)))
  (prime? n))

(define (report-prime n elapsed-time)
  (display n)
  (display " *** ")
  (display elapsed-time)
  (newline))

(define (search-for-primes start count)
  (cond ((= count 0) (newline))
        ((start-prime-test start (runtime)) (search-for-primes (+ start 1) (- count 1)))
        (else (search-for-primes (+ start 1) count))))

(search-for-primes 1000 3)
; 3-4
(search-for-primes 10000 3)
; 9
(search-for-primes 100000 3)
; 27-28
(search-for-primes 1000000 3)
; 85-86

; Does not reduce runtime by half, instead by ~1/3.
; We added an if statement in next.
