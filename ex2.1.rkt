#lang racket
(define (make-rat-helper n d)
  (let ((g (gcd n d)))
      (cons (/ n g) (/ d g))))

(define (make-rat n d)
  (if (< d 0)
      (if (< n 0)
          (make-rat-helper (abs n) (abs d))
          (make-rat-helper (- n) (abs d)))
      (make-rat-helper n d)))

(define (numer r)
  (car r))

(define (denom r)
  (cdr r))

(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))
    
(make-rat -42 -14)