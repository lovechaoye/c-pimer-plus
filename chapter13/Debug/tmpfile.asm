; Listing generated by Microsoft (R) Optimizing Compiler Version 19.25.28614.0 

	TITLE	C:\Users\Administrator\source\repos\chapter13\tmpfile.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB MSVCRTD
INCLUDELIB OLDNAMES

msvcjmc	SEGMENT
__F66CEB67_corecrt_stdio_config@h DB 01H
__101834BA_corecrt_wstdio@h DB 01H
__AD6A91B7_stdio@h DB 01H
__85E1F3AF_tmpfile@c DB 01H
msvcjmc	ENDS
PUBLIC	_maiwwn
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@		; `string'
PUBLIC	??_C@_03CCKOKKND@rb?$CL@			; `string'
PUBLIC	??_C@_03FFNGDGKN@tmp@				; `string'
EXTRN	__imp__fclose:PROC
EXTRN	__imp__fgetc:PROC
EXTRN	__imp__fopen:PROC
EXTRN	__imp__fseek:PROC
EXTRN	__imp__perror:PROC
EXTRN	__imp__putchar:PROC
EXTRN	__imp__exit:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_03FFNGDGKN@tmp@
CONST	SEGMENT
??_C@_03FFNGDGKN@tmp@ DB 'tmp', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_03CCKOKKND@rb?$CL@
CONST	SEGMENT
??_C@_03CCKOKKND@rb?$CL@ DB 'rb+', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@
CONST	SEGMENT
??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@ DB 'this is tmpfile', 00H ; `string'
CONST	ENDS
; Function compile flags: /Odt
;	COMDAT __JustMyCode_Default
_TEXT	SEGMENT
__JustMyCode_Default PROC				; COMDAT
	push	ebp
	mov	ebp, esp
	pop	ebp
	ret	0
__JustMyCode_Default ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\tmpfile.c
;	COMDAT _maiwwn
_TEXT	SEGMENT
_buf$ = -44						; size = 16
_ch$ = -20						; size = 4
_fp$ = -8						; size = 4
_maiwwn	PROC						; COMDAT

; 11   : int maiwwn(void) {

	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-240]
	mov	ecx, 60					; 0000003cH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __85E1F3AF_tmpfile@c
	call	@__CheckForDebuggerJustMyCode@4

; 12   :     FILE* fp;
; 13   :     int ch; //���ڴ���EOF
; 14   :     char buf[] ="this is tmpfile";

	mov	eax, DWORD PTR ??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@
	mov	DWORD PTR _buf$[ebp], eax
	mov	ecx, DWORD PTR ??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@+4
	mov	DWORD PTR _buf$[ebp+4], ecx
	mov	edx, DWORD PTR ??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@+8
	mov	DWORD PTR _buf$[ebp+8], edx
	mov	eax, DWORD PTR ??_C@_0BA@NMHEEFEC@this?5is?5tmpfile@+12
	mov	DWORD PTR _buf$[ebp+12], eax

; 15   :     //fp = tmpfile();
; 16   :     fp = fopen("tmp","rb+");

	mov	esi, esp
	push	OFFSET ??_C@_03CCKOKKND@rb?$CL@
	push	OFFSET ??_C@_03FFNGDGKN@tmp@
	call	DWORD PTR __imp__fopen
	add	esp, 8
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _fp$[ebp], eax

; 17   :     if (fp == NULL)

	cmp	DWORD PTR _fp$[ebp], 0
	jne	SHORT $LN6@maiwwn

; 18   :     {
; 19   :         perror(NULL);

	mov	esi, esp
	push	0
	call	DWORD PTR __imp__perror
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 20   :         exit(EXIT_FAILURE);

	mov	esi, esp
	push	1
	call	DWORD PTR __imp__exit
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN6@maiwwn:

; 21   :     }
; 22   :     //fprintf(fp,"%s","this is tmpfile\n");
; 23   :     //printf("%p\n",fp);
; 24   :     //if (fwrite(buf, sizeof(char), sizeof(buf), fp) < 0)
; 25   :     //{
; 26   :     //    perror(NULL);
; 27   :     //    exit(EXIT_FAILURE);
; 28   :     //}
; 29   : 
; 30   :     //rewind(fp);
; 31   :     fseek(fp,0L,SEEK_END);

	mov	esi, esp
	push	2
	push	0
	mov	eax, DWORD PTR _fp$[ebp]
	push	eax
	call	DWORD PTR __imp__fseek
	add	esp, 12					; 0000000cH
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@maiwwn:

; 32   :     while ((ch = fgetc(fp))!=EOF)

	mov	esi, esp
	mov	eax, DWORD PTR _fp$[ebp]
	push	eax
	call	DWORD PTR __imp__fgetc
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _ch$[ebp], eax
	cmp	DWORD PTR _ch$[ebp], -1
	je	SHORT $LN4@maiwwn

; 33   :     {
; 34   :         putchar(ch);

	mov	esi, esp
	mov	eax, DWORD PTR _ch$[ebp]
	push	eax
	call	DWORD PTR __imp__putchar
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 35   :     }

	jmp	SHORT $LN2@maiwwn
$LN4@maiwwn:

; 36   :     while (0)

	xor	eax, eax
	je	SHORT $LN5@maiwwn

; 37   :     {
; 38   :         //fwrite(buf, sizeof(char), SIZE, fp);
; 39   :     }

	jmp	SHORT $LN4@maiwwn
$LN5@maiwwn:

; 40   :     fclose(fp);

	mov	esi, esp
	mov	eax, DWORD PTR _fp$[ebp]
	push	eax
	call	DWORD PTR __imp__fclose
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 41   :     return 0;

	xor	eax, eax
$LN7@maiwwn:

; 42   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN10@maiwwn
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN10@maiwwn:
	DD	1
	DD	$LN9@maiwwn
$LN9@maiwwn:
	DD	-44					; ffffffd4H
	DD	16					; 00000010H
	DD	$LN8@maiwwn
$LN8@maiwwn:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
_maiwwn	ENDP
_TEXT	ENDS
END
