; Listing generated by Microsoft (R) Optimizing Compiler Version 19.25.28614.0 

	TITLE	C:\Users\Administrator\source\repos\chapter13\tmpnam.c
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
__6B25D5CB_tmpnam@c DB 01H
msvcjmc	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_aamaddddin
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_04LOAJBDKD@true@				; `string'
PUBLIC	??_C@_05LAPONLG@false@				; `string'
PUBLIC	??_C@_0DO@HDIDPBCG@tmp?5?$DN?$DN?5p?5?$DP?5?$CFs?0p?5address?5?$DN?5?$CFp?0tm@ ; `string'
PUBLIC	??_C@_0DF@CIFEJGOK@when?5parameter?5is?5NULL?0the?5retu@ ; `string'
PUBLIC	??_C@_0BL@BHJMDCNG@static?5int?5a?5address?5?$DN?5?$CFp?6@ ; `string'
EXTRN	__imp____acrt_iob_func:PROC
EXTRN	__imp__puts:PROC
EXTRN	__imp__tmpnam:PROC
EXTRN	__imp____stdio_common_vfprintf:PROC
EXTRN	@_RTC_CheckStackVars@8:PROC
EXTRN	@__CheckForDebuggerJustMyCode@4:PROC
EXTRN	@__security_check_cookie@4:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_InitBase:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	___security_cookie:DWORD
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
;	COMDAT ??_C@_0BL@BHJMDCNG@static?5int?5a?5address?5?$DN?5?$CFp?6@
CONST	SEGMENT
??_C@_0BL@BHJMDCNG@static?5int?5a?5address?5?$DN?5?$CFp?6@ DB 'static int'
	DB	' a address = %p', 0aH, 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_0DF@CIFEJGOK@when?5parameter?5is?5NULL?0the?5retu@
CONST	SEGMENT
??_C@_0DF@CIFEJGOK@when?5parameter?5is?5NULL?0the?5retu@ DB 'when paramet'
	DB	'er is NULL,the returnValue address = %p', 0aH, 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0DO@HDIDPBCG@tmp?5?$DN?$DN?5p?5?$DP?5?$CFs?0p?5address?5?$DN?5?$CFp?0tm@
CONST	SEGMENT
??_C@_0DO@HDIDPBCG@tmp?5?$DN?$DN?5p?5?$DP?5?$CFs?0p?5address?5?$DN?5?$CFp?0tm@ DB 't'
	DB	'mp == p ? %s,p address = %p,tmpnam returnValue address = %p', 0aH
	DB	00H						; `string'
CONST	ENDS
;	COMDAT ??_C@_05LAPONLG@false@
CONST	SEGMENT
??_C@_05LAPONLG@false@ DB 'false', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_04LOAJBDKD@true@
CONST	SEGMENT
??_C@_04LOAJBDKD@true@ DB 'true', 00H			; `string'
CONST	ENDS
_DATA	SEGMENT
?a@?1??aamaddddin@@9@9 DD 09H				; `aamaddddin'::`2'::a
_DATA	ENDS
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
; File C:\Users\Administrator\source\repos\chapter13\tmpnam.c
;	COMDAT _aamaddddin
_TEXT	SEGMENT
tv70 = -480						; size = 4
_p$ = -280						; size = 4
_buf$ = -268						; size = 260
__$ArrayPad$ = -4					; size = 4
_aamaddddin PROC					; COMDAT

; 11   : int aamaddddin() {

	push	ebp
	mov	ebp, esp
	sub	esp, 480				; 000001e0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-480]
	mov	ecx, 120				; 00000078H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	ecx, OFFSET __6B25D5CB_tmpnam@c
	call	@__CheckForDebuggerJustMyCode@4

; 12   :     char buf[L_tmpnam];
; 13   :     char* p;
; 14   :     p = tmpnam(buf);

	mov	esi, esp
	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__tmpnam
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _p$[ebp], eax

; 15   :     printf("tmp == p ? %s,p address = %p,tmpnam returnValue address = %p\n",p == buf ?"true":"false",p,buf);

	lea	eax, DWORD PTR _buf$[ebp]
	cmp	DWORD PTR _p$[ebp], eax
	jne	SHORT $LN3@aamaddddin
	mov	DWORD PTR tv70[ebp], OFFSET ??_C@_04LOAJBDKD@true@
	jmp	SHORT $LN4@aamaddddin
$LN3@aamaddddin:
	mov	DWORD PTR tv70[ebp], OFFSET ??_C@_05LAPONLG@false@
$LN4@aamaddddin:
	lea	ecx, DWORD PTR _buf$[ebp]
	push	ecx
	mov	edx, DWORD PTR _p$[ebp]
	push	edx
	mov	eax, DWORD PTR tv70[ebp]
	push	eax
	push	OFFSET ??_C@_0DO@HDIDPBCG@tmp?5?$DN?$DN?5p?5?$DP?5?$CFs?0p?5address?5?$DN?5?$CFp?0tm@
	call	_printf
	add	esp, 16					; 00000010H

; 16   :     puts(buf);

	mov	esi, esp
	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__puts
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 17   :     p = tmpnam(NULL);

	mov	esi, esp
	push	0
	call	DWORD PTR __imp__tmpnam
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	mov	DWORD PTR _p$[ebp], eax

; 18   :     printf("when parameter is NULL,the returnValue address = %p\n",p);

	mov	eax, DWORD PTR _p$[ebp]
	push	eax
	push	OFFSET ??_C@_0DF@CIFEJGOK@when?5parameter?5is?5NULL?0the?5retu@
	call	_printf
	add	esp, 8

; 19   :     puts(buf);

	mov	esi, esp
	lea	eax, DWORD PTR _buf$[ebp]
	push	eax
	call	DWORD PTR __imp__puts
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp

; 20   :     static int a = 9;
; 21   :     printf("static int a address = %p\n",&a);

	push	OFFSET ?a@?1??aamaddddin@@9@9
	push	OFFSET ??_C@_0BL@BHJMDCNG@static?5int?5a?5address?5?$DN?5?$CFp?6@
	call	_printf
	add	esp, 8

; 22   :     return 0;

	xor	eax, eax

; 23   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN7@aamaddddin
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 480				; 000001e0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
	npad	2
$LN7@aamaddddin:
	DD	1
	DD	$LN6@aamaddddin
$LN6@aamaddddin:
	DD	-268					; fffffef4H
	DD	260					; 00000104H
	DD	$LN5@aamaddddin
$LN5@aamaddddin:
	DB	98					; 00000062H
	DB	117					; 00000075H
	DB	102					; 00000066H
	DB	0
_aamaddddin ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Program Files (x86)\Windows Kits\10\Include\10.0.18362.0\ucrt\stdio.h
;	COMDAT _printf
_TEXT	SEGMENT
__ArgList$ = -20					; size = 4
__Result$ = -8						; size = 4
__Format$ = 8						; size = 4
_printf	PROC						; COMDAT

; 954  :     {

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

; 955  :         int _Result;
; 956  :         va_list _ArgList;
; 957  :         __crt_va_start(_ArgList, _Format);

	lea	eax, DWORD PTR __Format$[ebp+4]
	mov	DWORD PTR __ArgList$[ebp], eax

; 958  :         _Result = _vfprintf_l(stdout, _Format, NULL, _ArgList);

	mov	eax, DWORD PTR __ArgList$[ebp]
	push	eax
	push	0
	mov	ecx, DWORD PTR __Format$[ebp]
	push	ecx
	mov	esi, esp
	push	1
	call	DWORD PTR __imp____acrt_iob_func
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
	push	eax
	call	__vfprintf_l
	add	esp, 16					; 00000010H
	mov	DWORD PTR __Result$[ebp], eax

; 959  :         __crt_va_end(_ArgList);

	mov	DWORD PTR __ArgList$[ebp], 0

; 960  :         return _Result;

	mov	eax, DWORD PTR __Result$[ebp]

; 961  :     }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_printf	ENDP
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
