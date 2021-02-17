; recursive
(define (f-r n)
  (if (< n 3)
      n
      (+ (proc-r (- n 1))
         (* 2 (proc-r (- n 2)))
         (* 3 (proc-r (- n 3))))))

; iterative
(define (f n)
  (define (f-iter a b c count)
    (cond ((= count 0) c)
          ((< n 3) n)
          (else (p-iter (+ a (* 2 b) (* 3 c)) a b (- count 1)))))
  (f-iter 2 1 0 n))
