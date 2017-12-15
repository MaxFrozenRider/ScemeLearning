(define (square x) (* x x))

(define (sum_of_squares x y) (+ (square x) (square y)) )

(define (first_task a b c)
  (cond ((and (< a b) (< a c)) (sum_of_squares b c))
        ((and (< b c) (< b a)) (sum_of_squares a c))
        ((and (< c a) (< c b)) (sum_of_squares a b))
        ))
      
(first_task 4 2 3)