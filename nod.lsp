(define (nod a b)
  (if (= 0 (mod a b))
      b 
      (nod b (mod a b))
      )
  )

(define (mod a b)
  (if (< a b)
      a
      (mod (- a b) b)
      )
  )

(nod 1071 462)