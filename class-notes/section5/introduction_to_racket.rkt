(define s "hello") ; this is a comment

; Racket definitions, functions & conditionals

(define x 3) ; val x = 3
(define y (+ x 2)) ; + is a function, call it here

(define cube1 ; define our own function
  (lambda (x) ; argument
    (* x (* x x)))) ; x * (x * x)

(define cube2
  (lambda (x)
    (* x x x))) ; * can take any number of arguments

(define (cube3 x)
  (* x x x))

(define (pow1 x y) ; x to the yth power (y must be nonnegative)
  (if (= y 0)
    1
    (* x (pow1 x (- y 1)))))

(define pow2 ; currying - not as common in Racket because it supports multiple args
  (lambda (x)
    (lambda (y)
      (pow1 x y))))

(define three-to-the (pow2 3)) ; call: (three-to-the 2)

(define sixteen (pow1 4 2))
(define sixteen ((pow2 4) 2))

; Racket lists

; empty list: null
; cons constructor: cons
; access head of list: car
; access tail of list: cdr
; check for empty: null?

; sum all the numbers in a list
(define (sum xs)
  (if (null? xs)
    0
    (+ (car xs) (sum (cdr xs)))))

; append
(define (my-append xs ys) ; also a library function in Racket
  (if (null? xs)
    ys
    (cons (car xs) (my-append (cdr xs) ys))))

; map
(define (my-map f xs) ; also a library function in Racket
  (if (null? xs)
    null
    (cons (f (car xs))
          (my-map f (cdr xs)))))

(define foo (my-map (lambda (x) (+ x 1))
                    (cons 3 (cons 4 (cons 5 null))))) ; => '(4 5 6)

; Syntax & parentheses

; a term (anything in the language) is either:
;   - an atom, eg, #t, #f, 34, "hi", null, 4.0, x,...
;   - a special form, eg, define, lambda, if
;     - macros will let us define our own
;   - a sequence of terms in parens: (t1 t2 ... tn)
;     - if t1 is a special form, semantics of sequence is special
;     - else call a function
;
; Examples:
(+ 3 (car xs))
(lambda (x) (if x "hi" #t))

; can use [ instead of (, and sometimes convention dictates where to use [
;   - [ must match ] and ( must match )

; Parentheses matter (debugging practice)

; Parentheses are never optional or meaningless in Racket
; In most places, (e) means call e with zero arguments
; So ((e)) means call e with zero arguments and call the result with zero args
