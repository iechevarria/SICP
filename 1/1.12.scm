(define (pt x y)
  (if (or (= 0 y) (= x y))
      1
      (+ (pt (- x 1) (- y 1))
         (pt (- x 1) y))))
