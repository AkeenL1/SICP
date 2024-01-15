#lang sicp
; Problem Statement: Below is a sqeuence of expressions. What is the result printed by the interpreter in response to each expression? Assume that the sequence is to be evaluates in the order in which it is generated

10
; 10

(+ 5 3 4)
; 12

(- 9 1)
; 8

(/ 6 2)
; 3

(+ (* 2 4) (- 4 6))
; 6

(define a 3)
; 3

(define b (+ a 1))
; 4

(+ a b (* a b))
; 19

(= a b)
; false

(if (and (> b a) (< b (* a b)))
    b
    a)
; 4 ( value of b )

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;16 ( value of 6 + 7 + a )

(+ 2 (if (> b a) b a))
;6 ( value of b + 2 )

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;16 ( value of b ( 4 ) * (value of a ( 3 ) + 1)

; ---------------
; OUTPUT

;10
;12
;8
;3
;6
;19
;#f
;4
;16
;6
;16




