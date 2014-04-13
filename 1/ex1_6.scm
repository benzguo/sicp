
(define (new-if predicate
              	then-clause
              	else-clause)
	(cond (predicate then-clause)
	      (else else-clause)))

(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
     (average guess (/ x guess)))

(define (good-enough? guess x)
     (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(define (sqrt-iter-new guess x)
	(new-if (good-enough? guess x)
			guess
			(sqrt-iter-new (improve guess x) x)))


(sqrt-iter 1.0 9)
;Value: 3.00009155413138

(sqrt-iter-new 1.0 9)
;Aborting!: maximum recursion depth exceeded

; new-if uses applicative order evaluation. The second argument
; to new-if will be continue being expanded so sqrt-iter-new 
; will never return.

