(define (fast* a b)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (double a) (+ a a))
  (define (halve b) (/ b 2))
  (define (iter a b c)
    (cond ((= b 0) c)
          ((even? b) (iter (double a) (halve b) c))
          (else (iter a (- b 1) (+ c a)))
          ))
  (iter a b 0))
