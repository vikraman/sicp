#!/usr/bin/env guile
!#

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess x)
  (< (abs (- (* guess guess guess) x)) 0.00001))

(define (cbrt-iter guess x)
  (if (good-enough? guess x)
    guess
    (cbrt-iter (improve guess x)
	       x)))

(define (cbrt x)
  (cbrt-iter 1.0 x))

(display (cbrt 8))
(newline)

(display (cbrt (+ 100 25)))
(newline)

(display (* (cbrt 3) (cbrt 3) (cbrt 3)))
(newline)

(display (cbrt (+ (cbrt 64) (cbrt 27))))
(newline)
