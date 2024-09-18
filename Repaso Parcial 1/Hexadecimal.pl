
% Mapa de restos a dígitos hexadecimales
hex_digit(0, '0').
hex_digit(1, '1').
hex_digit(2, '2').
hex_digit(3, '3').
hex_digit(4, '4').
hex_digit(5, '5').
hex_digit(6, '6').
hex_digit(7, '7').
hex_digit(8, '8').
hex_digit(9, '9').
hex_digit(10, 'A').
hex_digit(11, 'B').
hex_digit(12, 'C').
hex_digit(13, 'D').
hex_digit(14, 'E').
hex_digit(15, 'F').

decimal_to_hex(0, ['0']) :- !.
decimal_to_hex(Decimal, Hex) :-
                                Decimal > 0,
                                Resto is Decimal mod 16,   
                                Cociente is Decimal // 16,    
                                decimal_to_hex(Cociente, Rest), 
                                hex_digit(Resto, HexDigit), 
                                append(Rest, [HexDigit], Hex).  