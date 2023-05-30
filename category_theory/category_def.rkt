#lang racket

(define (identity x)
  x)

(define (compose f g)
  (lambda (x) (f (g x))))

(define (maintains_identity? f input)
  (equal? ((compose identity f) input)
          ((compose f identity) input)))

(maintains_identity? (lambda (x) x) 1)
