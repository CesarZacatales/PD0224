; Cond

(define (procesar_eleccion_2 oper A B)
  (cond
    ((= oper 1) (+ A B))
    ((= oper 2) (- A B))
    ((= oper 3) (* A B))
    ((= oper 4) (/ A B))
    (else (display "Mal input"))))
(define (escoger_operacion_2 A B)
  (display "Escoja la operación a realizar:\n1. Suma\n2. Resta\n3. Multiplicación\n4. División\n")
  (procesar_eleccion_2 (read) A B))


;case

(define (procesar_eleccion_3 oper A B)
  (case oper
    ((1) (+ A B))
    ((2) (- A B))
    ((3) (* A B))
    ((4) (/ A B))
    (else (display "Mal input"))))
(define (escoger_operacion_3 A B)
  (display "Escoja la operación a realizar:\n1. Suma\n2. Resta\n3. Multiplicación\n4. División\n")
  (procesar_eleccion_3 (read) A B))



;ejercicio


(define (calcular_sueldo_neto n)
  (local
    (
     (define afp 0.0725)
     (define isss 0.03)
     (define renta 0.1)
     )
    (- n (* n afp) (* n isss) (* n renta))))



;variable local y set
(define (calcular_sueldo_neto_2 n)
  (local
    (
     (define afp 0.0725)
     (define isss 0.03)
     (define renta 0.1)
     )
    (set! renta (+ renta 0.02))
    (- n (* n afp) (* n isss) (* n renta))))


;utilizando set!-values
(define (calcular_sueldo_neto_3 n)
  (local
    (
     (define afp 0.0725)
     (define isss 0.03)
     (define renta 0.1)
     )
    (set!-values (afp isss renta) (values (+ afp 0.02) (+ isss 0.02) (+ renta 0.02)))
    (- n (* n afp) (* n isss) (* n renta))))

;utilizando let
(define (calcular_sueldo_neto_4 n)
  (let
    (
     (afp 0.0725)
     (isss 0.03)
     (renta 0.1)
     )
    (- n (* n afp) (* n isss) (* n renta))))


;utilizando let-values
(define (calcular_sueldo_neto_5 n)
  (let-values
    (
     ( (afp isss renta) (values 0.0725 0.03 0.1) )
    )
    (- n (* n afp) (* n isss) (* n renta))))