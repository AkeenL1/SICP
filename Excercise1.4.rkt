#lang sicp
; Problem Statement:
; Observe that our model of evaluation allows for combinations whose operators are compound expressions.
; Use this observation to describe the behavior of the following procedure

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; a-plus-abs-b adds the value of a with the absolute value of b
; it does this by checking if b is greater than 0 if it is the compound expression we us is + otherwise we use -

; there are 3 the compound expressions which are as follows
; 1. (> b 0) - #f or #t depending on if b is greater than 0
; 2. (if (#1) + 1) - + or - depending on the resolution of expression #1
; 3. (#2 a b) either + or - a and b depending on the resolution of expression #2

