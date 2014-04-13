(define (improve guess x)
	(/ (+ (/ x (* guess guess))(* 2 guess)) 3))

(define (cube x) (* x x x))

(define (good-enough? guess x)
    (< (abs (- (cube guess) x)) 0.001))

(define (cubrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(cubrt-iter (improve guess x) x)))


(cubrt-iter 1.0 27)
;Value: 3.0000005410641766

(cubrt-iter 1.0 100)
;Value: 4.641590111046459