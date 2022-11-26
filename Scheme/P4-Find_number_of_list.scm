 ( define  (my-length l)  
  
   ( let my-length ( (len 0)  (ll) )  
     ( if  ( null? l)  
         len (my-length ( + len 1) ( cdr l) ) )
   )
 ) 