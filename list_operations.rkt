#lang racket

(define (length list)
  (if (null? list)
      0
      (+ 1 (length (cdr list)))))

(define (n-th list n)
  (if (= n 1)
      (car list)
      (n-th (cdr list) (- n 1))))

(define (append list1 list2)
  (if (null? list1)
      list2
      (cons (car list1) (append (cdr list1) list2))))