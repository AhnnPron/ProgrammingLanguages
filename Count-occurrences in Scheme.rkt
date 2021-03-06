;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Count-occurrences in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define count-occurrences
  (lambda(s slist)
    (if (null? slist)
        0
        (if (symbol? (car slist))
            (if (eqv? (car slist) s)
                (+ 1 (count-occurences s(cdr slist))) ;occurrence found, add to the count
                (+ 0 (count-occurences s(cdr slist))) ;occurrence not found, don't add to the count
                )
            (+ (count-occurrences s (cdr slist))) ;the first element in the list is a nested list and not a symbol
            )
        )
    )
  )

;(if(null? slist)
 ;0
 ;(if(eqv? s(car slist))
  ;(+ 1(count-occurrences s(cdr slist)))
  ;(if(symbol?(car slist))
   ;(+ 0(count-occurrences s(cdr slist)))
   ;(+ (count-occurrences s(car slist))(count-occurrences s(cdr slist))))))))