;Realizar un programa que calcule el salario neto de un empleado, si se sabe que de su salario bruto se descuenta un 7.25% para el AFP, 3% para el ISSS 
;y 10% para la renta. El programa debe recibir como parámetro el salario bruto y retornar el salario neto.

#lang racket

(define (calcular-sueldo-neto sueldo-bruto)
  (define afp (* sueldo-bruto 0.0725))
  (define isss (* sueldo-bruto 0.03))
  (define renta (* sueldo-bruto 0.10))
  (define total-descuentos (+ afp isss renta))
  (- sueldo-bruto total-descuentos))

(calcular-sueldo-neto 800)

;TAREA AUMENTAR LA RENTA EN 2% --> al 100% le sumamos 2%
(define (calcular-sueldo sueldo-bruto)
  (define afp (* sueldo-bruto 0.0725))
  (define isss (* sueldo-bruto 0.03))
  (define renta (* sueldo-bruto 0.10))
  (set! renta (* renta 1.02))            
  (define total-descuentos (+ afp isss renta))
  (- sueldo-bruto total-descuentos))

(calcular-sueldo 800)