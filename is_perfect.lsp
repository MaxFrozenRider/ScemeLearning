(define (isPerfect x)
   (if (= (perf-iter 0 1 x) x)
       true 
       false
   )
  )

(define (perf-iter s counter max-count)
  (cond ((> counter max-count) s)
        ((mod max-count counter) (perf-iter (+ s counter) (+ counter 1) max-count))
        (else (perf-iter s (+ counter 1) max-count))
      )
  )