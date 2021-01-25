INCLUDE \masm32\include\masm32rt.inc

.data
myname db "Stefan Najdovski",13,10,0

.code

main:
mov ecx, 10
mov eax, 0

;loop
printmyname10times:
add eax,1
push eax
push ecx
invoke StdOut,ADDR myname
pop ecx
pop eax
loop printmyname10times
;end of loop
inkey;system("pause")
exit;exit process
END main

