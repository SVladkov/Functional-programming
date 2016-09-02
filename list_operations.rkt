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

(define (reverse list)
    (define (reverse-help list reversed_list)
        (if (null? list)
            reversed_list
            (reverse-help (cdr list) (cons (car list) reversed_list))))
    (reverse-help list null))

; reverse without helper
(define (reverse2 l)
    (if (null? l)
        l
        (append (reverse2 (cdr l))
                (list (car l)))))

(define (atom? x)
    (and (not (null? x))
        (not (pair? x))))


(define (deep_reverse l)
    (cond ((null? l) '())
          ((atom? l) l)
          (else (append (deep_reverse (cdr l))
                (list (deep_reverse (car l)))))))
