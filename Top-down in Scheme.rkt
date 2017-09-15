;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Top-down in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define lst '(1 2 3)) 
(define inS? ;is the number in sequence S?
  (lambda (N) ;takes in N as a parameter 
         (if (= N 0) ;N=0
             #t ;true
             (if (>=(- N 3) 0) ;if it's greater than or equal to zero
                 (inS? (- N 3))
                 #f)))) ;false