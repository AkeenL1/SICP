#lang sicp
; Problem Statement
; a test to determine whether the interpreter is using applicative-order evaluation or normal-order evaluation is defined as follow

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

; then he evaluates the expression

(test 0 (p))

; What behaviior will be observed in applicative order. normal order?
; In applicative order (test 0 (p)) will evalute the argument 0 and the argument (p) due to the recursive nature of (p) it will continue to call itself
; In normal order (test 0 (p)) evaluates to (if (= 0 0) 0 (p)) which evalutes to 0