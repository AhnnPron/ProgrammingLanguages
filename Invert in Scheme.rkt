;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Invert in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;(invert lst) where lst is a list of 2-lists (lists of length two)
; and returns a list with each 2-list reversed.
(define invert
  (lambda (lst)
    (if (null? lst) '();is the lst empty? 
        (cons (list (cadar lst) (caar lst))
              (invert (cdr lst))))))

;example '(A 1) to '(1 A)
; car=A
;cadr is the car of the cdr=1
; (cons(cadr lst)(cons(car lst)'()))))
; --putting the second element and the first element in lst into
; an empty list

;(cons(cadr(car lst))(cons(car(car(lst)) '()))
;second element of the first coordinate list and cons it to the
;first element of the first coordinate list and cons it to the empty
;list

;easy way: (cons(reverse(car lst))

;easiest way: (define invert2
;              (lambda(lst)
;               (map(lambda(x)(reverse x)) lst)))

(define down
  (lambda(lst)
    (if(null? lst)
       '()
       (cons(list(car lst))(down(cdr lst))))))
(down '(1 2 3))
    