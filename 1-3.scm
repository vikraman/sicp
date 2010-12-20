#!/usr/bin/env guile
!#

(define (square x)
  (* x x))

(define (sum-square a b)
  (+ (square a) (square b)))

(define (>= x y z)
  (and (or (> x y) (= x y)) (or (> y z) (= y z))))

(define (sum-max-squares a b c)
  (cond ((>= a b c) (sum-square a b))
	((>= b c a) (sum-square b c))
	((>= c a b) (sum-square c a))))

(display (sum-max-squares 2 5 4))
(newline)

(display (sum-max-squares -3 -5 9))
(newline)

(display (sum-max-squares 4 0 4))
(newline)

(display (sum-max-squares 2 2 2))
(newline)
