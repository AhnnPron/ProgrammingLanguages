;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname |Binsort in Scheme|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))


(define leaf ;how to build a leaf
  (lambda (int) ;takes in an integer and returns the integer
    int))
        
        
(define interior-node ;how to build an interior node
  (lambda (symb tree1 tree2) ;takes in a name and two lists
    (list symb tree1 tree2))) ;create a list containing these elements

(define leaf? ;check to see if it's a leaf or a tree
  (lambda (tree) ;takes in a list
    (if (integer? tree) ;if a number is returned, it's a leaf, but if a character is returned, it's not. 
        #t
        #f )))

(define lson ;building the left side of the tree
  (lambda (tree) ;takes in a list
    (car(cdr tree)))) ;tree1

(define rson ;building the right side of the three
  (lambda (tree) ;takes in a list
    (car(cdr(cdr tree))))) ;tree2


(define contents-of ;displaying the binary tree
  (lambda (binarytree) ;takes in the contents of the binarytree
    (if (leaf? binarytree) ;if there's a leaf in the binarytree
        binarytree ;return the tree
        (car binarytree)))) ;or return the first element in the tree


;(define leaf
 ; (lambda(num)
  ;  (num)))

;(define interior-node
 ; (lambda (s lson rson)
  ;  (list s lson rson)))

;(define leaf?
 ; (lambda(binTree)
  ;  (number? binTree)))

;(define interior-node?
 ; (lambda(binTree)
  ;  (list? binTree)))

;(define lson
 ; (lambda (binTree)
  ;  (if (leaf? binTree)
   ;     #f
    ;    (cadr binTree))))

;(define rson
 ; (lambda (binTree)
  ;  (if (leaf? binTree)
   ;     #f
    ;    (caddr binTree))))

;(define contents-of
 ; (lambda(binTree)
  ;  (if(leaf? binTree)
   ;    binTree
    ;   (car binTree))))




















(define test-tree (interior-node 'tree-name 7 8))

(define test-leaf (leaf 5))

