.386
option casemap :none

include \masm32\include\masm32rt.inc

.data
fibN DWORD 48  ; n -- 48 max
result byte 4 DUP(?)

.code
main:
	mov ecx, fibN  ; nth fibonacci number
	
	mov eax, 1  ; set the initial sum
	mov ebx, 0  ; initialize preceding num
	
	cmp ecx, 1  ; Special case if n=1
	je e
	
	cmp ecx, 2  ; Special case if n=2
	je e

	
	lp:
	mov edx, eax  ; Use temp register for subtracting
	sub edx, ebx  ; Subtract to get preceding num in sequence
	
	mov ebx, edx  ; Move result to the preceding num register
	add eax, ebx  ; Add cur and preceding num to get next in sequence
	
	dec ecx  ; Decrement n
	cmp ecx, 2  
	ja lp

	
	e:
	invoke dwtoa, eax, addr result  ;; Convert our sum to a string
	invoke StdOut, addr result ;; Print the string
	
	ret
END main


COMMENT @
Decompiled C CODE out of assembly
int start()
{
  unsigned int v0; // ecx
  int v1; // eax
  int v2; // ebx

  v0 = dword_403000;
  v1 = 1;
  v2 = 0;
  if ( dword_403000 != 1 && dword_403000 != 2 )
  {
    do
    {
      v2 = v1 - v2;
      v1 += v2;
      --v0;
    }
    while ( v0 > 2 );
  }
  sub_401040(v1, &unk_403004);
  return sub_4010A8(&unk_403004);
}
@