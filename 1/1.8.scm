(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (cbrt-iter (improve guess x) x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* guess 2.0)) 3.0))

(define (good-enough? guess x)
  (< (abs (/ (- (improve guess x) guess) guess)) 0.0001))

(define (cbrt x)
  (cbrt-iter 1.0 x))
