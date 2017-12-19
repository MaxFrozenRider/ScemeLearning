(define (square a) (* a a))

(define (inc a) (+ a 1))

(define (compose a b)
 (lambda (x) (a (b x)))
  )

((compose square inc) 6)