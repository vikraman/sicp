#!/usr/bin/env guile
!#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(display (a-plus-abs-b 5 -3))
