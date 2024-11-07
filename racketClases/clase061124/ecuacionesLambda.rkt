#lang racket

(define (resolver_ecuacion)
    (display "¿Qué tipo de ecuación tienes?\n1. Primer grado\n2. Cuadrática\n3. Cúbica\n")
    (display (resolver (read))))

(define (pedir_dato msg)
    (display msg)
    (read))

(define (resolver tipo)
    (case tipo
        [(1) ((lambda (a b)
                        (if (= a 0)
                                (display "No es una ecuación de primer grado válida.\n")
                                (let ([x (/ (- b) a)])
                                    (display (format "El valor de x es: ~a\n" x)))))
                    (pedir_dato "Coeficiente a:\n")
                    (pedir_dato "Coeficiente b:\n"))]
        
        [(2) ((lambda (a b c)
                        (if (= a 0)
                                (display "No es una ecuación cuadrática válida.\n")
                                (let* ([discriminante (- (* b b) (* 4 a c))]
                                             [x1 (/ (+ (- b) (sqrt discriminante)) (* 2 a))]
                                             [x2 (/ (- (- b) (sqrt discriminante)) (* 2 a))])
                                    (display (format "Los valores de x son: ~a y ~a\n" x1 x2)))))
                    (pedir_dato "Coeficiente a:\n")
                    (pedir_dato "Coeficiente b:\n")
                    (pedir_dato "Coeficiente c:\n"))]
        
        [(3) ((lambda (a b c d)
                        (display "Resolver ecuaciones cúbicas es más complejo y no está implementado en este ejemplo.\n"))
                    (pedir_dato "Coeficiente a:\n")
                    (pedir_dato "Coeficiente b:\n")
                    (pedir_dato "Coeficiente c:\n")
                    (pedir_dato "Coeficiente d:\n"))]))
