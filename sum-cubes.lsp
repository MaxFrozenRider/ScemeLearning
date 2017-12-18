(define (cube a) (* a a a))

(define (sum-cubes a b)
  (iter-sum-cubes 0 a b)
  )

(define (iter-sum-cubes sum current border)
  (if (= current border)
      (+ sum (cube current))
      (iter-sum-cubes (+ sum (cube current)) (+ current 1) border)
      )
  )

(sum-cubes 1 10)