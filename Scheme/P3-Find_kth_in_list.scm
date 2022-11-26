 (define (my-list-ref l k) 
   (if (= k 0) 
     (car l) 
     (my-list-ref (cdr l) (- k 1)))) 