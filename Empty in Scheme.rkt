;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Empty in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define exists
  (lambda (pred lst) ;function "exists" takes in a predicate and a list of elements
    (if (null? lst) ;if we've gone to the end of the list without hitting any snags, return false
        #f
        (if (pred (car lst)) ;if the first element in the list satisfies the predicate return true
            #t
            (exists pred(cdr lst)))))) ;run through the rest of the list by returning to the beginging of the function "exists"


;Run through the list looking for an element that satisfies the
;predicate. If one is found, stop and return true.
;If there is not an element in the list that satisfies the predicate,
;return false. Or if the list is empty.

;(define exists?
 ; (lambda(pred lst)
  ;  (if (null? lst)
   ;     #f
    ;    (if(pred(car lst))
     ;      #t
      ;     (exists? pred(cdr lst))))))