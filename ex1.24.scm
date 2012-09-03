(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time)) false))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time)
  true)
(define (fast-prime? na 啊))
(define (prime? n)
  (= (smallest-divisor n) n))
(define (smallest-divisor n)
  (find-divisor n 2))
(define (find-divisor n test-divisor)
  (define (next n)
    (if (= n 2)
        3
        (+ n 2)))
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))
(define (divides? test-divisor n)
  (= (remainder n test-divisor) 0)) 

(define (search-for-primes n)
  (define (even? n)
    (= (remainder n 2) 0))
  (define (iter n counter)
    (if (< counter 3)
        (if (timed-prime-test n)
            (iter (+ n 2) (+ counter 1))
            (iter (+ n 2) counter))))
  (if (even? n)
      (iter (+ n 1) 0)
      (iter (+ n 2) 0)))
