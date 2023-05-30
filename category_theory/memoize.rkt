#lang racket


(define (memoize f)
  (let ([results (make-hash)])
    lambda (x)
    hash-ref! results x (lambda () (f x))))
