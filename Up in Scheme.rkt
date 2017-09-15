;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Up in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;((1 2))-->(1 2)

(define up
  (lambda (lst)
    (if (null? lst)
        '()
        (if (list?(car lst))
            (append(car lst)(up(cdr lst))
            (cons(car lst)(up(cdr lst))))))))