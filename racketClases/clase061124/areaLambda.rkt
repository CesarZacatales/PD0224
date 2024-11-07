#lang racket

;ejemplo 2
(define (calcular_area)
  (display "¿Qué figura tienes?\n1. Triángulo\n2. Cuadrado\n3. Rectángulo\n4. Círculo\n")
  (display (area_figura (read))))

(define (pedir_dato msg)
  (display msg)
  (read))

(define (area_figura fig)
  (case fig
       [(1) ((lambda (b h) (/ (* b h) 2)) (pedir_dato "Base:\n") (pedir_dato "Altura:\n"))]  ;triángulo
       [(2) ((lambda (b) (* b b)) (pedir_dato "Lado:\n"))]                                   ;cuadrado
       [(3) ((lambda (b h) (* b h)) (pedir_dato "Base:\n") (pedir_dato "Altura:\n"))]        ;rectángulo
       [(4) ((lambda (r) (* (* r r) pi)) (pedir_dato "Radio:\n"))]                           ;círculo
      ))