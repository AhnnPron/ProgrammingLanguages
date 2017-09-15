;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Sort-Predicate in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define sort/predicate
  (lambda (pred lon)
    (if (null? lon)
        '()
        (cons (find-winner-helper (cdr lon) (car lon) pred) (sort/predicate pred (removeFirstVal lon (find-winner-helper (cdr lon) (car lon) pred)))))))


(define find-winner-helper ;find the largest or smallest number depending on the predicate, given a list of elements
  (lambda(lon currWinner pred) 
    (if (null? lon) 
        currWinner ;if list is empty, return the largest/smallest number
        (if (pred (car lon) currWinner) ;if the first element satisfies the predicate, apply the function of predicate 
            (find-winner-helper(cdr lon) (car lon) pred) ;set the car as the new winner
            (find-winner-helper(cdr lon) currWinner pred))))) ;keep the winner the same


(define removeFirstVal ;remove the first element and find the second element in the list
  (lambda(lon val) ;takes in a list and a value given
    (if(null? lon) ;if the list is empty, stop
       '()
       (if(=(car lon) val) ;if the first element in the list is equal to the number given
          (cdr lon) ;move on; return everything but the first element
          (cons(car lon)(removeFirstVal(cdr lon) val)))))) ;otherwise concatinate the the first element with the rest of the list


;(define findLeader
 ; (lambda(lon pred)
  ;  (if (null? lon)
   ;     #f
    ;    (find-winner-helper (cdr lon)(car lon) pred))))

;(define sort/predicate
 ; (lambda(pred lon)
  ;  (if (null? lon)
   ;     '()
    ;    (cons(findLeader lon pred)(sort/predicate pred(removeFirstVal lon(findWinner lon pred)))))))

