(define (n_power_rec b n)
  (if (= n 1)
  b
  (* b (n_power_rec b (- n 1)))
)
  )

(define (n_power_it b n)
  (next_iter b b 1 n)
  )

(define (next_iter r b counter max_count)
  (if (= counter max_count)
      r 
      (next_iter (* r b) b (+ counter 1) max_count))
  )


(n_power_it 2 2)