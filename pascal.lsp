(define (calc_item i j)
  (if (or (= j 1) (= i j))
      1
      (+ (calc_item (- i 1) j) (calc_item (- i 1) (- j 1)))
    ))
  
(calc_item 3 2)