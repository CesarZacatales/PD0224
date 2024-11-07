;ejercicio calcular el interes ganado en una inversion a lo largo de un tiempo es:
; A = P(1 + r/n)^(nt)
;hacer una funcion que reciba P, r, n, t y devuelva A

#lang racket

(define (calcular_interes P r n t)
  (define A (* P (expt (+ 1 (/ r n)) (* n t))))
  A)

(calcular_interes 1000 0.05 12 10)