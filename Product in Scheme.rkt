;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Product in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define product
  (lambda(sos1 sos2)
    (if (null? sos1) ;if the first list of elements is empty
        '() ;return an empty list, end
        (append (product-helper (car sos1) sos 2) (product (cdr sos1) sos2))
        ;running the car of sos1 and sos2 through product helper, append
        ;the output to the product cdr of sos1 and sos2
        ;this part of the function only runs if there are still elements in
        ;sos1
        )
    )
  )

(define product-helper
   (lambda (sym sos);product-helper takes in two lists called sym and sos
      (if (null? sos) ;if sos is empty, end
          '()
           (cons (list sym (car sos))(product-helper sym (cdr sos)))
           ;cons the element in sym to the car of sos to the product-helper
           ;sym and cdr sos, creating a list of the first element with every
           ;element in the second list
           ;ends when all the elements in sos are run through.
           )
     )
  )

;(define product-helper)
; (lambda (s los)
;  (if (null? los)
;   '()
;    (cons (list s (car los))(product-helper s(cdr los))))))
;(define product
; (lambda(los1 los2)
;  (if(null? los1)
;   '()
;    (append(product-helper(car los1) los2)(product(cdr los1)los2)))))

;(define product-helper-map
 ; (lambda(s los)
  ;  (map(lambda(sym)(list s sym))los)))                           


  