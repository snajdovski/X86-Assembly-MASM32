.386;using the 386 instructionset aka Intel 80386
option casemap:none;casesensitive words
include \masm32\include\masm32rt.inc;included loads of libraries this way mainly needed for crt_system,stdOut,exitprocess
;data segment
.data
message db "Print Text",13,10,0; db = databyte and it means allocate some space and fill it with string inside the quotes
systempause db "pause",0 ;string only used for system(pause)
;code segment
.code
;main function starts here
main:
invoke StdOut,ADDR message; invoke is assembler directive that calls a procedure or a function, we are calling StdOut and we are pointing the address of the message
invoke crt_system,ADDR systempause;ADDR (gets the address of the variable not the value itself) system('PAUSE')
invoke ExitProcess,0 ; exit the program
;main function ends here
END main