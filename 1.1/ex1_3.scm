(define (square a) (* a a))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (max a b) (if (> a b) a b))

(define (sum-of-largest-squares a b c) 
		(if (> a b) (sum-of-squares a (max b c)) 
	   		  		(sum-of-squares b (max a c))))

(newline)
(display (= (sum-of-largest-squares 1 3 4) 25))
(newline)
(display (= (sum-of-largest-squares 4 2 1) 20))
(newline)
(display (= (sum-of-largest-squares 4 2 5) 41))