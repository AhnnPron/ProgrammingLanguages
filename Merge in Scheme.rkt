;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Merge in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define merge
  (lambda(loi1 loi2) ;merge takes in two lists
    (if (null? loi1) ;if the first list we are checking is empty, return the rest of the second list
        loi2
        (if (null? loi2) ;if the second list is empty, return the contents of the first list
            loi1
            (if (< (car loi1) (car loi2)) ;if the first element in the first list is smaller then the first element in the second list
                (cons (car loi1)(merge(cdr loi1) loi2)) ;cons the first element in the first list with the rest of the first list and the second list following
                (cons (car loi2)(merge loi1 (cdr loi2))) ;cons the first element in the second list with the first list and the rest of the second list
                )
            )
        )
    )
  )

;(define merge
 ; (lambda(loi1 loi2)
  ;  (if (and (null? loi1)(null? loi2))
   ;     '()
    ;    (if(null? loi1)
     ;      loi2
      ;     (if(null? loi2)
       ;       loi1
        ;      (if (< (car loi1)(car loi2))
         ;         (cons(car loi1)(merge(cdr loi1) loi2))
          ;        (cons(car loi2)(merge loi1(cdr loi2)))))))))

        