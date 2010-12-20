#!/usr/bin/env guile
!#

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.00001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
	(else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
    guess
    (sqrt-iter (improve guess x)
	       x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(display (sqrt 3))
(newline)

(display (sqrt (+ 100 44)))
(newline)

(display (* (sqrt 3) (sqrt 3)))
(newline)

(display (sqrt (+ (sqrt 81) (sqrt 256))))
(newline)
