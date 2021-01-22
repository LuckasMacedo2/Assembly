; Autor: Lucas Macedo da Silva

segment .data
msg db "Hello World!", 10	;10 na tabela ASCII indica o /n




segment .txt 	; nome da diretiva .nome da diretiva
global main
main:			;inicio do programa (gcc)

mov edx,11		;Tamanho da string			11 = tamanho
mov ecx,msg	;ponteiro
mov ebx,1		;Tela (destino)				1 = codigo para saida
mov eax,4		;Print string (Servico)		4 = codigo para impressao na tela

int 0x80		;Chamada ao sistema



				;encerra
mov eax,1  		;servico exit
int 0x80   		;chamada ao sistema
