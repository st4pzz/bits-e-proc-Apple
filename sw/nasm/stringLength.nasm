; Arquivo: stringLength.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi 
; Data: 28/03/2018
;
; Assuma que uma string é um conjunto de caracteres terminado
; em NULL (0).
; 
; Supondo que temos uma string que começa no endereço 8 da RAM.
; Calcule o seu tamanho e salve o resultado na RAM[0].
;
; Os caracteres estão formatados em ASCII
; http://sticksandstones.kstrom.com/appen.html
; 
; Exemplo:
;
;   Convertido para ASCII
;             |
;             v
;  RAM[8]  = `o`
;  RAM[9]  = `i`
;  RAM[10] = ` `
;  RAM[11] = `b`
;  RAM[12] =  l`
;  RAM[13] = `z`
;  RAM[14] = `?`
;  RAM[15] = NULL = 0x0000



leaw $7, %A
movw %A, %D
leaw $0,%A
movw %D, (%A)
; 7 na ram [0]
WHILE:

leaw $0,%A
movw (%A), %D
incw %D
movw %D,(%A)
; 7 incrementado na ram[0] e em D
movw %D,%A
movw (%A),%D
; testar o que está posicionado na ram para D
leaw $WHILE
jne
nop
leaw $0,%A
movw (%A), %D
leaw $8,%A
subw %D, %A,%D
leaw $0,%A
movw %D, (%A)




