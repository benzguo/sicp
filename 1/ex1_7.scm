(define (average x y) (/ (+ x y) 2))

(define (improve guess x)
     (average guess (/ x guess)))

(define (good-enough? guess x)
     (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x) x)))

(sqrt-iter 1.0 0.001)
;Value: .04124542607499115
; Expected: ~0.03162
; 0.001 is too large a threshold for small values.
; For large values, sqrt-iter takes a long time.


(define (good-enough2? guess last-guess)
     (< (abs (- last-guess guess)) 0.001))

(define (sqrt-iter2 guess last-guess x)
	(if (good-enough2? guess last-guess)
		guess
		(sqrt-iter2 (improve guess x) guess x)))

(sqrt-iter2 1.0 0.001 0.001)
;Value: .03162278245070105
