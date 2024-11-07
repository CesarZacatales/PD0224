; ejercicio elabore una funcion que calcule el cum del ciclo y el cum global de un estudiante utilizando let
; teniendo unidades valorativas y notas
;Primero cum del ciclo

#lang racket

(define (calcular_cum_ciclo uv1 n1 uv2 n2 uv3 n3 uv4 n4 uv5 n5)
  (let
    (
     (cum_ciclo (/ (+ (* uv1 n1) (* uv2 n2) (* uv3 n3) (* uv4 n4) (* uv5 n5)) (+ uv1 uv2 uv3 uv4 uv5)))
     )
    cum_ciclo))

(calcular_cum_ciclo 5 7 5 8 4 6 3 9 4 7)

;Ahora cum global
(define (calcular_cum_global uv1 n1 uv2 n2 uv3 n3 uv4 n4 uv5 n5)
  (let
    (
     (cum_ciclo (/ (+ (* uv1 n1) (* uv2 n2) (* uv3 n3) (* uv4 n4) (* uv5 n5)) (+ uv1 uv2 uv3 uv4 uv5)))
     (cum_global (/ (+ (* uv1 n1) (* uv2 n2) (* uv3 n3) (* uv4 n4) (* uv5 n5)) (+ uv1 uv2 uv3 uv4 uv5)))
     )
    cum_global))

(calcular_cum_global 5 7 5 8 4 6 3 9 4 7)


(define (calcular-cum-global uv1 n1 uv2 n2 uv3 n3 uv4 n4 uv5 n5 uv6 n6 uv7 n7)
  (let ((cum-global (/ (+ (* uv1 n1) (* uv2 n2) (* uv3 n3) (* uv4 n4) (* uv5 n5) (* uv6 n6) (* uv7 n7))
                       (+ uv1 uv2 uv3 uv4 uv5 uv6 uv7))))
    cum-global))

;; Ejemplo de uso:
;; Unidades valorativas: 5, 5, 4, 3, 4, 4, 3
;; Notas: 7, 8, 6, 9, 7, 8.5, 7.5

(calcular-cum-global 5 7 5 8 4 6 3 9 4 7 4 8.5 3 7.5