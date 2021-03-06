; Listing generated by Microsoft (R) Optimizing Compiler Version 19.25.28614.0 

	TITLE	C:\Users\Administrator\source\repos\chapter13\stringCombine.c
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
__21B137A7_stringCombine@c DB 01H
msvcjmc	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_fprintf
PUBLIC	_maidddddn
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_0BH@JCCNKLIA@Usage?3?5enter?5a?5string?6@	; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp__putchar:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	__imp__exit:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
_DATA	SEGMENT
COMM	?_OptionsStorage@?1??__local_stdio_printf_options@@9@9:QWORD							; `__local_stdio_printf_options'::`2'::_OptionsStorage
_DATA	ENDS
;	COMDAT rtc$TMZ
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
rtc$IMZ	ENDS
;	COMDAT ??_C@_0BH@JCCNKLIA@Usage?3?5enter?5a?5string?6@
CONST	SEGMENT
??_C@_0BH@JCCNKLIA@Usage?3?5enter?5a?5string?6@ DB 'Usage: enter a string'
	DB	0aH, 00H					; `string'
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
; File C:\Users\Administrator\source\repos\chapter13\stringCombine.c
;	COMDAT _maidddddn
_TEXT	SEGMENT
_second$ = -68						; size = 4
_next$ = -56						; size = 4
_ch$ = -44						; size = 4
_temp2$ = -32						; size = 4
_temp$ = -20						; size = 4
_p$ = -8						; size = 4
_argc$ = 8						; size = 4
_argv$ = 12						; size = 4
_maidddddn PROC						; COMDAT

; 9    : int maidddddn(int argc,char * argv[]) {

	push	ebp
	mov	ebp, esp
	sub	esp, 264				; 00000108H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-264]
	mov	ecx, 66					; 00000042H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __21B137A7_stringCombine@c
	call	@__CheckForDebuggerJustMyCode@4

; 10   :     if (argc < 2) {

	cmp	DWORD PTR _argc$[ebp], 2
	jge	SHORT $LN8@maidddddn

; 11   :         fprintf(stdout,"Usage: enter a string\n");

	push	OFFSET ??_C@_0BH@JCCNKLIA@Usage?3?5enter?5a?5string?6@
	mov	esi, esp
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	push	eax
	call	_fprintf
	add	esp, 8

; 12   :         exit(EXIT_FAILURE);

	mov	esi, esp
	push	1
	call	DWORD PTR __imp__exit
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN8@maidddddn:

; 13   :     }
; 14   :     char* p = argv[1];

	mov	eax, 4
	shl	eax, 0
	mov	ecx, DWORD PTR _argv$[ebp]
	mov	edx, DWORD PTR [ecx+eax]
	mov	DWORD PTR _p$[ebp], edx
$LN2@maidddddn:

; 15   :     char* temp; 
; 16   :     char* temp2; 
; 17   :     int ch;
; 18   :     int next;
; 19   :     int second;
; 20   :     while ((ch=*p) != '\0')

	mov	eax, DWORD PTR _p$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _ch$[ebp], ecx
	cmp	DWORD PTR _ch$[ebp], 0
	je	$LN3@maidddddn

; 21   :     {
; 22   :         temp = p +1;

	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _temp$[ebp], eax
$LN4@maidddddn:

; 23   :         while ((next = *temp) != '\0')

	mov	eax, DWORD PTR _temp$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _next$[ebp], ecx
	cmp	DWORD PTR _next$[ebp], 0
	je	$LN5@maidddddn

; 24   :         {
; 25   :             temp2 = temp + 1;

	mov	eax, DWORD PTR _temp$[ebp]
	add	eax, 1
	mov	DWORD PTR _temp2$[ebp], eax
$LN6@maidddddn:

; 26   :             while ((second = *temp2) != '\0')

	mov	eax, DWORD PTR _temp2$[ebp]
	movsx	ecx, BYTE PTR [eax]
	mov	DWORD PTR _second$[ebp], ecx
	cmp	DWORD PTR _second$[ebp], 0
	je	SHORT $LN7@maidddddn

; 27   :             {
; 28   :                 putchar(ch);

	mov	esi, esp
	mov	eax, DWORD PTR _ch$[ebp]
	push	eax
	call	DWORD PTR __imp__putchar
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 29   :                 putchar(next);

	mov	esi, esp
	mov	eax, DWORD PTR _next$[ebp]
	push	eax
	call	DWORD PTR __imp__putchar
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 30   :                 putchar(second);

	mov	esi, esp
	mov	eax, DWORD PTR _second$[ebp]
	push	eax
	call	DWORD PTR __imp__putchar
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 31   :                 putchar('\n');

	mov	esi, esp
	push	10					; 0000000aH
	call	DWORD PTR __imp__putchar
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 32   :                 temp2++;

	mov	eax, DWORD PTR _temp2$[ebp]
	add	eax, 1
	mov	DWORD PTR _temp2$[ebp], eax

; 33   :             }

	jmp	SHORT $LN6@maidddddn
$LN7@maidddddn:

; 34   :             temp++;

	mov	eax, DWORD PTR _temp$[ebp]
	add	eax, 1
	mov	DWORD PTR _temp$[ebp], eax

; 35   :         }

	jmp	$LN4@maidddddn
$LN5@maidddddn:

; 36   :         p++;

	mov	eax, DWORD PTR _p$[ebp]
	add	eax, 1
	mov	DWORD PTR _p$[ebp], eax

; 37   :     }

	jmp	$LN2@maidddddn
$LN3@maidddddn:

; 38   :     return 0;

	xor	eax, eax
$LN9@maidddddn:

; 39   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 264				; 00000108H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_maidddddn ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt\stdio.h
;	COMDAT _fprintf
_TEXT	SEGMENT
__ArgList$ = -20					; size = 4
__Result$ = -8						; size = 4
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
_fprintf PROC						; COMDAT

; 835  :     {

	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __AD6A91B7_stdio@h
	call	@__CheckForDebuggerJustMyCode@4

; 836  :         int _Result;
; 837  :         va_list _ArgList;
; 838  :         __crt_va_start(_ArgList, _Format);

	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax

; 839  :         _Result = _vfprintf_l(_Stream, _Format, NULL, _ArgList);

	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR __Format$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Stream$[ebp]
	push	edx
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax

; 840  :         __crt_va_end(_ArgList);

	mov	DWORD PTR __ArgList$[ebp], 0

; 841  :         return _Result;

	mov	eax, DWORD PTR __Result$[ebp]

; 842  :     }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_fprintf ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt\stdio.h
;	COMDAT __vfprintf_l
_TEXT	SEGMENT
__Stream$ = 8						; size = 4
__Format$ = 12						; size = 4
__Locale$ = 16						; size = 4
__ArgList$ = 20						; size = 4
__vfprintf_l PROC					; COMDAT

; 642  :     {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __AD6A91B7_stdio@h
	call	@__CheckForDebuggerJustMyCode@4

; 643  :         return __stdio_common_vfprintf(_CRT_INTERNAL_LOCAL_PRINTF_OPTIONS, _Stream, _Format, _Locale, _ArgList);

	mov	esi, esp
	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Locale$[ebp]
	push	ecx
	mov	edx, DWORD PTR __Format$[ebp]
	push	edx
	mov	eax, DWORD PTR __Stream$[ebp]
	push	eax
	call	___local_stdio_printf_options
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	mov	edx, DWORD PTR [eax]
	push	edx
	call	DWORD PTR __imp____stdio_common_vfprintf
	add	esp, 24					; 00000018H
	cmp	esi, esp
	call	__RTC_CheckEsp

; 644  :     }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__vfprintf_l ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt\corecrt_stdio_config.h
;	COMDAT ___local_stdio_printf_options
_TEXT	SEGMENT
___local_stdio_printf_options PROC			; COMDAT

; 86   :     {

	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __F66CEB67_corecrt_stdio_config@h
	call	@__CheckForDebuggerJustMyCode@4

; 87   :         static unsigned __int64 _OptionsStorage;
; 88   :         return &_OptionsStorage;

	mov	eax, OFFSET ?_OptionsStorage@?1??__local_stdio_printf_options@@9@9 ; `__local_stdio_printf_options'::`2'::_OptionsStorage

; 89   :     }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
___local_stdio_printf_options ENDP
_TEXT	ENDS
END
