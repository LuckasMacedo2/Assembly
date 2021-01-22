; Autor: Lucas Macedo da Silva
; Código para ler e imprimir um string

section .data
msg1 db "Entre com uma string: ", LF	;10 na tabela ASCII indica o /n
tam equ $-msg1				;O montador conta a quantidade de caracter, sendo este 
							;variavel somente durante a compilação, depois torna-se uma constante
LF equ 10					;Entrará no lugar do 10, boa pratica

section .bss
msg2 resb 50	;reservar bits

section .txt 	;nome da diretiva .nome da diretiva
global main
main:			;inicio do programa (gcc)


;Orientação ao usuario

mov edx,tam		;Tamanho da string			11 = tamanho
mov ecx,msg1	;ponteiro
mov ebx,1		;Tela (destino)				1 = codigo para saida
mov eax,4		;Print string (Servico)		4 = codigo para impressao na tela
int 0x80

;carregando a string  

mov edx,40
mov ecx,msg2	;destino
mov ebx,0		;FD do teclado, FD = file descriptor = leitor de arquivos
mov eax,3		;3 = ler do teclados
int 0x80

;Imprimindo a string lida


mov edx,50
mov ecx,msg2
mov ebx,1
mov eax,4
int 0x80


				;encerra
mov eax,1  		;servico exit
int 0x80   		;chamada ao sistema
