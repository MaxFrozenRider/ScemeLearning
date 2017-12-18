(define (isPerfect x)
   (if (= (perf-iter 0 1 x) x)
       1 
       0
   )
  )

(define (perf-iter s counter max-count)
  (cond ((= counter max-count) s)
        ((= (mod max-count counter) 0) (perf-iter (+ s counter) (+ counter 1) max-count))
        (else (perf-iter s (+ counter 1) max-count))
      )
  )

(define (mod a b)
  (if (< a b)
      a
      (mod (- a b) b)
      )
  )

(isPerfect 496)