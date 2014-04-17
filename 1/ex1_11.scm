(define (f-rec n) 
	(if (< n 3) 
		n
		(+ (f-rec (- n 1)) 
	  	   (* 2 (f-rec (- n 2)))
		   (* 3 (f-rec (- n 3))))))
  

(define (f-iter n)
	(define (iter a b c count)
			(if (< count 3) 
				a
				(iter (+ a (* 2 b) (* 3 c))
	  					a
	  					b
	  					(- count 1))))
	(if (< n 3) n
		(iter 2 1 0 n)))

(newline)
(display (= (f-rec 1) (f-iter 1)))
(newline)
(display (= (f-rec 2) (f-iter 2)))
(newline)
(display (= (f-rec 5) (f-iter 5)))
(newline)
(display (= (f-rec 20) (f-iter 20)))