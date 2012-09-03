(define (cube x)
  (* x x x))
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))
(define (odd? n)
  (= (remainder n 2) 1))
(define (integral f a b n)
  (let ((h (/ (- b a) n)))
  (define (xi i) (+ a (* i h)))
  (define (next i)
    (+ i 1))
  (define (term i)
    (cond ((or (= i 0) (= i n)) (f (xi i)))
          ((odd? i) (* 4 (f (xi i)))) 
          (else (* 2 (f (xi i)))))) 
  (* (sum term 0 next n) (/ h 3))))

(integral cube 0 1 100)