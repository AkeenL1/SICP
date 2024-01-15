#lang sicp
; ----------------
; Problem Statement:
; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers
; ----------------

(define (square x) (* x x))

(define (sos-largest-numbers a b c)
  (cond ((and (> a b) (> b c)) (+ (square a) (square b)))
        ((and (> a c) (> c b)) (+ (square a) (square c)))
        ((and (> b a) (> a c)) (+ (square b) (square a)))
        ((and (> b c) (> c a)) (+ (square b) (square c)))
        ((and (> c b) (> b a)) (+ (square c) (square b)))
        ((and (> c a) (> a b)) (+ (square c) (square a)))))


; a and b
(sos-largest-numbers 6 8 1)
; a and c
(sos-largest-numbers 6 1 8)
; b and c
(sos-largest-numbers 1 6 8)

;OUTPUT
;100
;100
;100