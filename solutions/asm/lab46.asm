;wyswietla poziomy pasek o dlugosci 30 znakow na srodku ekranu
org 100h

;ustawienie segmentu i offsetu
mov ax, 0b800h
mov es, ax
xor bp, bp

add bp, 210d;zmodyfikowany offset z poprzedniego zadania

mov ax, 4200h;czerwony prostokat
mov [es:bp], al
inc bp
mov [es:bp], ah

mov cx, 30d;czerwony pasek
petla:
inc bp
mov [es:bp], al
inc bp
mov [es:bp], ah
loop petla

mov ax, 4c00h
int 21h