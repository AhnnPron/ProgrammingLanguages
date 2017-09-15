;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Duple in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;(duple n x) returns a list containing n copies of x. 
(define duple
  (lambda (n x) ;duple takes in two values "n" and "x"
    (if (<= n 0)
        '() ;empty list
	(cons x (duple (- n 1) x)))))
;another value of x needs to be tacked onto the list. Cons takes
;a value and a list.

;example (duple 3 7)
; (Cons 7(duple 2 7)
; (Cons 7(duple 1 7)
; (Cons 7(duple 0 7)
; 0<=0 so '()
; (Cons 7'(7)) **recursive
; (Cons 7'(7 7))
; (7 7 7) 