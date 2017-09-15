;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Flatten in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define flatten
  (lambda (slist) ;flatten takes in a list
    (if (null? slist) ;if the list doesn't have any elements left inside, return an empty list
        '()
        (if (list?(car slist)) ;checking to see if the first element in the list is infact a list
            (append (flatten (car slist))(flatten(cdr slist))) ;append the the first element of the list with the rest of the list
            (cons(car slist)(flatten(cdr slist))))))) ;the first element is not a list so cons it instead
                   
;if the first element in the list is a list
;check to see if it's empty
;if it is a list and is not empty, append to the new list
;if it's empty, move on to the next element

;(define flatten
 ; (lambda (slist)
  ;  (if(null? slist)
   ;    '()
    ;   (if(list?(car slist))
     ;     (append(flatten(car slist)(flatten(cdr slist))))
      ;    (cons(car slist)(flatten(cdr slist)))))))