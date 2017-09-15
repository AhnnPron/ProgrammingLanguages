;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |List-set in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define list-set
  (lambda (lst n x)
    (if (null? lst) ;once the list is empty, there's no need to replace with value x
        '()
        (if (= n 0) ;its not empty so..
            (cons x(list-set(cdr lst)(- n 1) x)) ;replace with x
            (cons (car lst) (list-set(cdr lst)(- n 1) x)) ;don't replace with x
            )
        )
    )
  )

;(if (null? lst)
;'()
 ;(if (zero? n)
  ;(cons x(list-set(cdr lst)(- n 1) x)
  ;(cons(car lst(list-set(cdr lst)(- n 1) x))))))   