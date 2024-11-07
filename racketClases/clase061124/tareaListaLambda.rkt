;Hacer una función que muestre el contenido de una lista (asumiendo que no se pudiera colocar la lista como argumento de la función display). utilizando lambda

#lang racket

(define (mostrar_lista lst)
    ((lambda (lst)
        (if (null? lst)
            (display "\n")
            (begin
                (display (car lst))
                (display " ")
                (mostrar_lista (cdr lst)))))
     lst))

(mostrar_lista '(1 2 3 4 5 6 7 8 9 10))