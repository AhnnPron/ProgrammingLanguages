;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |List-index in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define list-index
  (lambda (pred lst)
    (list-index-helper lst 0 pred) 
    )
  )

(define list-index-helper ;helper function for "list-index"
  (lambda(lst curr-index pred) ;takes in a list of elements, a number as a counter, and a predicate
    (if(null? lst) ;if there is no more elements in the lists, return false
       #f
       (if(pred(car lst)) ;if the first element in the list satisfies the predicate return the current index that is set to 0 in the function "list-index"
          curr-index
          (list-index-helper(cdr lst)(+ 1 curr-index) pred) ;run through the rest of the list, add 1 to the counter, checking to see if it matches the predicate
          )
       )
    )
  )


;Run through the list checking to see when an element satisfies the
;predicate. For every time an element is un through the list,
;set the counter to 0 and increase by 1.
;Return the counter when the first element that satisfies the predicate
;is found in the list.
;Return false if there is no element in the list that satisfies the
;predicate or if the list is empty. 


;(define list-index-helper
 ; (lambda (pred lst pos)
  ;  (if (null? lst)
   ;     #f
    ;    (if (pred(car lst))
     ;       pos
      ;      (list-index-helper pred (cdr lst) (+ pos 1))))))
;(define list-index
 ; (lambda(pred lst)
  ;  (list-index-helper pred lst 0)))

;(define sum
 ; (lambda(lst)
  ;  (if (null? lst)
   ;     0
    ;    (+ (car lst)(sum(cdr lst))))))
    
  
                 
       
   
  