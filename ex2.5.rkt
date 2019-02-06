#lang racket
(define (power x n)
  (if (= n 0)
      1
      (if (= n 1)
      x
      (* x (power x (- n 1))))))


(define (cons a b)
  (* (power 2 a) (power 3 b)))

(define (car z)
  (if (> (remainder z 2) 0)
      0
      (+ 1 (car (/ z 2)))))

(define (cdr z)
  (if (> (remainder z 3) 0)
      0
      (+ 1 (cdr (/ z 3)))))

(define test (cons 3 4))
(car test)
(cdr test)