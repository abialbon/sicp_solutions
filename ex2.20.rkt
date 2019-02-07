#lang racket
(define (same-parity a . z)
  (if (= (remainder a 2) 0)
      (cons a (sp-helper z 0))
      (cons a (sp-helper z 1))))

(define (sp-helper z n)
  (if (null? z)
      null
      (if (= (remainder (car z) 2) n)
          (cons (car z) (sp-helper (cdr z) n))
          (sp-helper (cdr z) n))))

(same-parity 2 3 4 5 6 7)

