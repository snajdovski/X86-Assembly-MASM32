.386
.model flat, stdcall
option casemap :none

include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc;to call system pause 
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib

.data

message db "Hello World from Masm32",0
func    db "pause",0

.code

main:

    invoke  StdOut,ADDR message
    invoke  crt_system,ADDR func
    invoke  ExitProcess,0

END main