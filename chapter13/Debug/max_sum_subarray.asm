; Listing generated by Microsoft (R) Optimizing Compiler Version 19.25.28614.0 

	TITLE	C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
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
__75F1C0F6_max_sum_subarray@c DB 01H
msvcjmc	ENDS
PUBLIC	___local_stdio_printf_options
PUBLIC	__vfprintf_l
PUBLIC	_printf
PUBLIC	_sum
PUBLIC	_getMaxSum
PUBLIC	_getMaxSum2
PUBLIC	_max_sub1
PUBLIC	_max_sub2
PUBLIC	_msssain
PUBLIC	__JustMyCode_Default
PUBLIC	??_C@_09JIIENBBK@max?5?$DN?5?$CFd?6@		; `string'
EXTRN	__imp____acrt_iob_func:PROC
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
;	COMDAT ??_C@_09JIIENBBK@max?5?$DN?5?$CFd?6@
CONST	SEGMENT
??_C@_09JIIENBBK@max?5?$DN?5?$CFd?6@ DB 'max = %d', 0aH, 00H ; `string'
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
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _msssain
_TEXT	SEGMENT
_max$ = -420						; size = 4
_array$ = -408						; size = 400
__$ArrayPad$ = -4					; size = 4
_msssain PROC						; COMDAT

; 9    : int msssain(void) {

	push	ebp
	mov	ebp, esp
	sub	esp, 616				; 00000268H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-616]
	mov	ecx, 154				; 0000009aH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 10   :     //int array[] = {-1,-3,3,5,-4,3,2,-2,3,6};
; 11   :     int array[] = { -84,-87,-78,-16,-94,-36,-87,-93,-50,-22,-63,-28,-91,-60,-64,-27,-41,-27,-73,-37,-12,-69,-68,-30,-83,-31,-63,-24,-68,-36,-30,-3,-23,-59,-70,-68,-94,-57,-12,-43,-30,-74,-22,-20,-85,-38,-99,-25,-16,-71,-14,-27,-92,-81,-57,-74,-63,-71,-97,-82,-6,-26,-85,-28,-37,-6,-47,-30,-14,-58,-25,-96,-83,-46,-15,-68,-35,-65,-44,-51,-88,-9,-77,-79,-89,-85,-4,-52,-55,-100,-33,-61,-77,-69,-40,-13,-27,-87,-95,-40 };

	mov	DWORD PTR _array$[ebp], -84		; ffffffacH
	mov	DWORD PTR _array$[ebp+4], -87		; ffffffa9H
	mov	DWORD PTR _array$[ebp+8], -78		; ffffffb2H
	mov	DWORD PTR _array$[ebp+12], -16		; fffffff0H
	mov	DWORD PTR _array$[ebp+16], -94		; ffffffa2H
	mov	DWORD PTR _array$[ebp+20], -36		; ffffffdcH
	mov	DWORD PTR _array$[ebp+24], -87		; ffffffa9H
	mov	DWORD PTR _array$[ebp+28], -93		; ffffffa3H
	mov	DWORD PTR _array$[ebp+32], -50		; ffffffceH
	mov	DWORD PTR _array$[ebp+36], -22		; ffffffeaH
	mov	DWORD PTR _array$[ebp+40], -63		; ffffffc1H
	mov	DWORD PTR _array$[ebp+44], -28		; ffffffe4H
	mov	DWORD PTR _array$[ebp+48], -91		; ffffffa5H
	mov	DWORD PTR _array$[ebp+52], -60		; ffffffc4H
	mov	DWORD PTR _array$[ebp+56], -64		; ffffffc0H
	mov	DWORD PTR _array$[ebp+60], -27		; ffffffe5H
	mov	DWORD PTR _array$[ebp+64], -41		; ffffffd7H
	mov	DWORD PTR _array$[ebp+68], -27		; ffffffe5H
	mov	DWORD PTR _array$[ebp+72], -73		; ffffffb7H
	mov	DWORD PTR _array$[ebp+76], -37		; ffffffdbH
	mov	DWORD PTR _array$[ebp+80], -12		; fffffff4H
	mov	DWORD PTR _array$[ebp+84], -69		; ffffffbbH
	mov	DWORD PTR _array$[ebp+88], -68		; ffffffbcH
	mov	DWORD PTR _array$[ebp+92], -30		; ffffffe2H
	mov	DWORD PTR _array$[ebp+96], -83		; ffffffadH
	mov	DWORD PTR _array$[ebp+100], -31		; ffffffe1H
	mov	DWORD PTR _array$[ebp+104], -63		; ffffffc1H
	mov	DWORD PTR _array$[ebp+108], -24		; ffffffe8H
	mov	DWORD PTR _array$[ebp+112], -68		; ffffffbcH
	mov	DWORD PTR _array$[ebp+116], -36		; ffffffdcH
	mov	DWORD PTR _array$[ebp+120], -30		; ffffffe2H
	mov	DWORD PTR _array$[ebp+124], -3		; fffffffdH
	mov	DWORD PTR _array$[ebp+128], -23		; ffffffe9H
	mov	DWORD PTR _array$[ebp+132], -59		; ffffffc5H
	mov	DWORD PTR _array$[ebp+136], -70		; ffffffbaH
	mov	DWORD PTR _array$[ebp+140], -68		; ffffffbcH
	mov	DWORD PTR _array$[ebp+144], -94		; ffffffa2H
	mov	DWORD PTR _array$[ebp+148], -57		; ffffffc7H
	mov	DWORD PTR _array$[ebp+152], -12		; fffffff4H
	mov	DWORD PTR _array$[ebp+156], -43		; ffffffd5H
	mov	DWORD PTR _array$[ebp+160], -30		; ffffffe2H
	mov	DWORD PTR _array$[ebp+164], -74		; ffffffb6H
	mov	DWORD PTR _array$[ebp+168], -22		; ffffffeaH
	mov	DWORD PTR _array$[ebp+172], -20		; ffffffecH
	mov	DWORD PTR _array$[ebp+176], -85		; ffffffabH
	mov	DWORD PTR _array$[ebp+180], -38		; ffffffdaH
	mov	DWORD PTR _array$[ebp+184], -99		; ffffff9dH
	mov	DWORD PTR _array$[ebp+188], -25		; ffffffe7H
	mov	DWORD PTR _array$[ebp+192], -16		; fffffff0H
	mov	DWORD PTR _array$[ebp+196], -71		; ffffffb9H
	mov	DWORD PTR _array$[ebp+200], -14		; fffffff2H
	mov	DWORD PTR _array$[ebp+204], -27		; ffffffe5H
	mov	DWORD PTR _array$[ebp+208], -92		; ffffffa4H
	mov	DWORD PTR _array$[ebp+212], -81		; ffffffafH
	mov	DWORD PTR _array$[ebp+216], -57		; ffffffc7H
	mov	DWORD PTR _array$[ebp+220], -74		; ffffffb6H
	mov	DWORD PTR _array$[ebp+224], -63		; ffffffc1H
	mov	DWORD PTR _array$[ebp+228], -71		; ffffffb9H
	mov	DWORD PTR _array$[ebp+232], -97		; ffffff9fH
	mov	DWORD PTR _array$[ebp+236], -82		; ffffffaeH
	mov	DWORD PTR _array$[ebp+240], -6		; fffffffaH
	mov	DWORD PTR _array$[ebp+244], -26		; ffffffe6H
	mov	DWORD PTR _array$[ebp+248], -85		; ffffffabH
	mov	DWORD PTR _array$[ebp+252], -28		; ffffffe4H
	mov	DWORD PTR _array$[ebp+256], -37		; ffffffdbH
	mov	DWORD PTR _array$[ebp+260], -6		; fffffffaH
	mov	DWORD PTR _array$[ebp+264], -47		; ffffffd1H
	mov	DWORD PTR _array$[ebp+268], -30		; ffffffe2H
	mov	DWORD PTR _array$[ebp+272], -14		; fffffff2H
	mov	DWORD PTR _array$[ebp+276], -58		; ffffffc6H
	mov	DWORD PTR _array$[ebp+280], -25		; ffffffe7H
	mov	DWORD PTR _array$[ebp+284], -96		; ffffffa0H
	mov	DWORD PTR _array$[ebp+288], -83		; ffffffadH
	mov	DWORD PTR _array$[ebp+292], -46		; ffffffd2H
	mov	DWORD PTR _array$[ebp+296], -15		; fffffff1H
	mov	DWORD PTR _array$[ebp+300], -68		; ffffffbcH
	mov	DWORD PTR _array$[ebp+304], -35		; ffffffddH
	mov	DWORD PTR _array$[ebp+308], -65		; ffffffbfH
	mov	DWORD PTR _array$[ebp+312], -44		; ffffffd4H
	mov	DWORD PTR _array$[ebp+316], -51		; ffffffcdH
	mov	DWORD PTR _array$[ebp+320], -88		; ffffffa8H
	mov	DWORD PTR _array$[ebp+324], -9		; fffffff7H
	mov	DWORD PTR _array$[ebp+328], -77		; ffffffb3H
	mov	DWORD PTR _array$[ebp+332], -79		; ffffffb1H
	mov	DWORD PTR _array$[ebp+336], -89		; ffffffa7H
	mov	DWORD PTR _array$[ebp+340], -85		; ffffffabH
	mov	DWORD PTR _array$[ebp+344], -4		; fffffffcH
	mov	DWORD PTR _array$[ebp+348], -52		; ffffffccH
	mov	DWORD PTR _array$[ebp+352], -55		; ffffffc9H
	mov	DWORD PTR _array$[ebp+356], -100	; ffffff9cH
	mov	DWORD PTR _array$[ebp+360], -33		; ffffffdfH
	mov	DWORD PTR _array$[ebp+364], -61		; ffffffc3H
	mov	DWORD PTR _array$[ebp+368], -77		; ffffffb3H
	mov	DWORD PTR _array$[ebp+372], -69		; ffffffbbH
	mov	DWORD PTR _array$[ebp+376], -40		; ffffffd8H
	mov	DWORD PTR _array$[ebp+380], -13		; fffffff3H
	mov	DWORD PTR _array$[ebp+384], -27		; ffffffe5H
	mov	DWORD PTR _array$[ebp+388], -87		; ffffffa9H
	mov	DWORD PTR _array$[ebp+392], -95		; ffffffa1H
	mov	DWORD PTR _array$[ebp+396], -40		; ffffffd8H

; 12   : 				//int max = getMaxSum(array,0,sizeof(array)/sizeof(int)-1);
; 13   : 				int max = max_sub2(array,sizeof(array)/sizeof(int)-1);

	push	99					; 00000063H
	lea	eax, DWORD PTR _array$[ebp]
	push	eax
	call	_max_sub2
	add	esp, 8
	mov	DWORD PTR _max$[ebp], eax

; 14   : 				printf("max = %d\n",max);

	mov	eax, DWORD PTR _max$[ebp]
	push	eax
	push	OFFSET ??_C@_09JIIENBBK@max?5?$DN?5?$CFd?6@
	call	_printf
	add	esp, 8

; 15   : 				return 0;

	xor	eax, eax

; 16   : }

	push	edx
	mov	ecx, ebp
	push	eax
	lea	edx, DWORD PTR $LN5@msssain
	call	@_RTC_CheckStackVars@8
	pop	eax
	pop	edx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	add	esp, 616				; 00000268H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
$LN5@msssain:
	DD	1
	DD	$LN4@msssain
$LN4@msssain:
	DD	-408					; fffffe68H
	DD	400					; 00000190H
	DD	$LN3@msssain
$LN3@msssain:
	DB	97					; 00000061H
	DB	114					; 00000072H
	DB	114					; 00000072H
	DB	97					; 00000061H
	DB	121					; 00000079H
	DB	0
_msssain ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _max_sub2
_TEXT	SEGMENT
_j$ = -44						; size = 4
_i$ = -32						; size = 4
_sum$ = -20						; size = 4
_max$ = -8						; size = 4
_array$ = 8						; size = 4
_length$ = 12						; size = 4
_max_sub2 PROC						; COMDAT

; 114  : int max_sub2(int array[], int length) {

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
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 115  : 				int max = array[0];   //max的取值可以随机选一个，而不是0，防止数组元素都会负数

	mov	eax, 4
	imul	ecx, eax, 0
	mov	edx, DWORD PTR _array$[ebp]
	mov	eax, DWORD PTR [edx+ecx]
	mov	DWORD PTR _max$[ebp], eax

; 116  : 				int sum;
; 117  : 				int i;  //i在这里表示长度
; 118  : 				int j;
; 119  : 				for (i = 0; i < length; i++)

	mov	DWORD PTR _i$[ebp], 0
	jmp	SHORT $LN4@max_sub2
$LN2@max_sub2:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN4@max_sub2:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _length$[ebp]
	jge	SHORT $LN3@max_sub2

; 120  : 				{
; 121  : 								sum = 0;

	mov	DWORD PTR _sum$[ebp], 0

; 122  : 								//以array[i] 为起点，数组依次增大都是子数组
; 123  : 								for (j = i; j < length; j++)

	mov	eax, DWORD PTR _i$[ebp]
	mov	DWORD PTR _j$[ebp], eax
	jmp	SHORT $LN7@max_sub2
$LN5@max_sub2:
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax
$LN7@max_sub2:
	mov	eax, DWORD PTR _j$[ebp]
	cmp	eax, DWORD PTR _length$[ebp]
	jge	SHORT $LN6@max_sub2

; 124  : 								{
; 125  : 												sum += array[j];

	mov	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR _sum$[ebp]
	add	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _sum$[ebp], edx

; 126  : 												if (sum > max)

	mov	eax, DWORD PTR _sum$[ebp]
	cmp	eax, DWORD PTR _max$[ebp]
	jle	SHORT $LN8@max_sub2

; 127  : 												{
; 128  : 																max = sum;

	mov	eax, DWORD PTR _sum$[ebp]
	mov	DWORD PTR _max$[ebp], eax
$LN8@max_sub2:

; 129  : 												}
; 130  : 								}

	jmp	SHORT $LN5@max_sub2
$LN6@max_sub2:

; 131  : 				}

	jmp	SHORT $LN2@max_sub2
$LN3@max_sub2:

; 132  : 				return max;

	mov	eax, DWORD PTR _max$[ebp]

; 133  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 240				; 000000f0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_max_sub2 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _max_sub1
_TEXT	SEGMENT
_k$ = -56						; size = 4
_j$ = -44						; size = 4
_i$ = -32						; size = 4
_sum$ = -20						; size = 4
_max$ = -8						; size = 4
_array$ = 8						; size = 4
_length$ = 12						; size = 4
_max_sub1 PROC						; COMDAT

; 85   : int max_sub1(int array[],int length) {

	push	ebp
	mov	ebp, esp
	sub	esp, 252				; 000000fcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-252]
	mov	ecx, 63					; 0000003fH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 86   : 				//思路是穷尽一切连续的子数组，查出最大值是多少
; 87   : 				//子数组有两种开始的分类方法，一是，先计算长度是一的，在计算长度是2的，以此类推
; 88   : 				int max = array[0];   //max的取值可以随机选一个，而不是0，防止数组元素都会负数

	mov	eax, 4
	imul	ecx, eax, 0
	mov	edx, DWORD PTR _array$[ebp]
	mov	eax, DWORD PTR [edx+ecx]
	mov	DWORD PTR _max$[ebp], eax

; 89   : 				int sum;
; 90   : 				int i;  //i在这里表示长度
; 91   : 				int j;
; 92   : 				int k;
; 93   : 				for (i = 1; i <= length; i++)

	mov	DWORD PTR _i$[ebp], 1
	jmp	SHORT $LN4@max_sub1
$LN2@max_sub1:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN4@max_sub1:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _length$[ebp]
	jg	SHORT $LN3@max_sub1

; 94   : 				{
; 95   : 								for ( j = 0; j < length; j++)  //j是子数组的起点

	mov	DWORD PTR _j$[ebp], 0
	jmp	SHORT $LN7@max_sub1
$LN5@max_sub1:
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax
$LN7@max_sub1:
	mov	eax, DWORD PTR _j$[ebp]
	cmp	eax, DWORD PTR _length$[ebp]
	jge	SHORT $LN6@max_sub1

; 96   : 								{
; 97   : 												sum = 0;

	mov	DWORD PTR _sum$[ebp], 0

; 98   : 												for (k = j; k < j+i && k < length; k++)  //这里是计算子数组的和

	mov	eax, DWORD PTR _j$[ebp]
	mov	DWORD PTR _k$[ebp], eax
	jmp	SHORT $LN10@max_sub1
$LN8@max_sub1:
	mov	eax, DWORD PTR _k$[ebp]
	add	eax, 1
	mov	DWORD PTR _k$[ebp], eax
$LN10@max_sub1:
	mov	eax, DWORD PTR _j$[ebp]
	add	eax, DWORD PTR _i$[ebp]
	cmp	DWORD PTR _k$[ebp], eax
	jge	SHORT $LN9@max_sub1
	mov	eax, DWORD PTR _k$[ebp]
	cmp	eax, DWORD PTR _length$[ebp]
	jge	SHORT $LN9@max_sub1

; 99   : 												{
; 100  : 																sum += array[k];

	mov	eax, DWORD PTR _k$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR _sum$[ebp]
	add	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _sum$[ebp], edx

; 101  : 												}

	jmp	SHORT $LN8@max_sub1
$LN9@max_sub1:

; 102  : 												if (sum > max)

	mov	eax, DWORD PTR _sum$[ebp]
	cmp	eax, DWORD PTR _max$[ebp]
	jle	SHORT $LN11@max_sub1

; 103  : 												{
; 104  : 																max = sum;

	mov	eax, DWORD PTR _sum$[ebp]
	mov	DWORD PTR _max$[ebp], eax
$LN11@max_sub1:

; 105  : 												}
; 106  : 
; 107  : 								}

	jmp	SHORT $LN5@max_sub1
$LN6@max_sub1:

; 108  : 				}

	jmp	SHORT $LN2@max_sub1
$LN3@max_sub1:

; 109  : 
; 110  : 				return max;

	mov	eax, DWORD PTR _max$[ebp]

; 111  : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 252				; 000000fcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_max_sub1 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _getMaxSum2
_TEXT	SEGMENT
tv146 = -328						; size = 4
tv144 = -328						; size = 4
tv137 = -328						; size = 4
tv128 = -328						; size = 4
_temp$1 = -128						; size = 4
_temp$2 = -116						; size = 4
_rightMax$ = -104					; size = 4
_leftMax$ = -92						; size = 4
_j$ = -80						; size = 4
_i$ = -68						; size = 4
_more$ = -56						; size = 4
_summid$ = -44						; size = 4
_sumRight$ = -32					; size = 4
_sumLeft$ = -20						; size = 4
_mid$ = -8						; size = 4
_array$ = 8						; size = 4
_left$ = 12						; size = 4
_right$ = 16						; size = 4
_getMaxSum2 PROC					; COMDAT

; 43   : int getMaxSum2(int array[], int left, int right) {

	push	ebp
	mov	ebp, esp
	sub	esp, 328				; 00000148H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-328]
	mov	ecx, 82					; 00000052H
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 44   : 				if (left == right)

	mov	eax, DWORD PTR _left$[ebp]
	cmp	eax, DWORD PTR _right$[ebp]
	jne	SHORT $LN6@getMaxSum2

; 45   : 				{
; 46   : 								return array[left];

	mov	eax, DWORD PTR _left$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
	jmp	$LN1@getMaxSum2
$LN6@getMaxSum2:

; 47   : 				}
; 48   : 				//分解元问题,递归子问题
; 49   : 				int mid = left + (right - left) / 2;

	mov	eax, DWORD PTR _right$[ebp]
	sub	eax, DWORD PTR _left$[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	eax, DWORD PTR _left$[ebp]
	mov	DWORD PTR _mid$[ebp], eax

; 50   : 				int sumLeft = getMaxSum2(array, left, mid);

	mov	eax, DWORD PTR _mid$[ebp]
	push	eax
	mov	ecx, DWORD PTR _left$[ebp]
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_getMaxSum2
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _sumLeft$[ebp], eax

; 51   : 				int sumRight = getMaxSum2(array, mid + 1, right);

	mov	eax, DWORD PTR _right$[ebp]
	push	eax
	mov	ecx, DWORD PTR _mid$[ebp]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_getMaxSum2
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _sumRight$[ebp], eax

; 52   : 				//中间最大
; 53   : 				int summid ;
; 54   : 				int more;
; 55   : 				int i = mid-1;

	mov	eax, DWORD PTR _mid$[ebp]
	sub	eax, 1
	mov	DWORD PTR _i$[ebp], eax

; 56   : 				int j = mid+1;

	mov	eax, DWORD PTR _mid$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax

; 57   : 				int leftMax = 0;

	mov	DWORD PTR _leftMax$[ebp], 0

; 58   : 				int rightMax = 0;

	mov	DWORD PTR _rightMax$[ebp], 0

; 59   : 				if (mid -1>=left) {

	mov	eax, DWORD PTR _mid$[ebp]
	sub	eax, 1
	cmp	eax, DWORD PTR _left$[ebp]
	jl	SHORT $LN7@getMaxSum2

; 60   : 								leftMax = array[i];

	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _leftMax$[ebp], edx
$LN7@getMaxSum2:

; 61   : 				}
; 62   : 				if (mid + 1 <= right) {

	mov	eax, DWORD PTR _mid$[ebp]
	add	eax, 1
	cmp	eax, DWORD PTR _right$[ebp]
	jg	SHORT $LN2@getMaxSum2

; 63   : 								rightMax = array[j];

	mov	eax, DWORD PTR _j$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _rightMax$[ebp], edx
$LN2@getMaxSum2:

; 64   : 				}
; 65   : 
; 66   : 				while (i>=left)

	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _left$[ebp]
	jl	SHORT $LN4@getMaxSum2

; 67   : 				{
; 68   : 								int temp = sum(array,i,mid -1);

	mov	eax, DWORD PTR _mid$[ebp]
	sub	eax, 1
	push	eax
	mov	ecx, DWORD PTR _i$[ebp]
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_sum
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _temp$2[ebp], eax

; 69   : 								leftMax = leftMax > temp ? leftMax : temp;

	mov	eax, DWORD PTR _leftMax$[ebp]
	cmp	eax, DWORD PTR _temp$2[ebp]
	jle	SHORT $LN10@getMaxSum2
	mov	ecx, DWORD PTR _leftMax$[ebp]
	mov	DWORD PTR tv128[ebp], ecx
	jmp	SHORT $LN11@getMaxSum2
$LN10@getMaxSum2:
	mov	edx, DWORD PTR _temp$2[ebp]
	mov	DWORD PTR tv128[ebp], edx
$LN11@getMaxSum2:
	mov	eax, DWORD PTR tv128[ebp]
	mov	DWORD PTR _leftMax$[ebp], eax

; 70   : 								i--;

	mov	eax, DWORD PTR _i$[ebp]
	sub	eax, 1
	mov	DWORD PTR _i$[ebp], eax

; 71   : 				}

	jmp	SHORT $LN2@getMaxSum2
$LN4@getMaxSum2:

; 72   : 
; 73   : 				while (j <= right)

	mov	eax, DWORD PTR _j$[ebp]
	cmp	eax, DWORD PTR _right$[ebp]
	jg	SHORT $LN5@getMaxSum2

; 74   : 				{
; 75   : 								int temp = sum(array, mid + 1, j);

	mov	eax, DWORD PTR _j$[ebp]
	push	eax
	mov	ecx, DWORD PTR _mid$[ebp]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_sum
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _temp$1[ebp], eax

; 76   : 								rightMax = rightMax > temp ? rightMax : temp;

	mov	eax, DWORD PTR _rightMax$[ebp]
	cmp	eax, DWORD PTR _temp$1[ebp]
	jle	SHORT $LN12@getMaxSum2
	mov	ecx, DWORD PTR _rightMax$[ebp]
	mov	DWORD PTR tv137[ebp], ecx
	jmp	SHORT $LN13@getMaxSum2
$LN12@getMaxSum2:
	mov	edx, DWORD PTR _temp$1[ebp]
	mov	DWORD PTR tv137[ebp], edx
$LN13@getMaxSum2:
	mov	eax, DWORD PTR tv137[ebp]
	mov	DWORD PTR _rightMax$[ebp], eax

; 77   : 								j++;

	mov	eax, DWORD PTR _j$[ebp]
	add	eax, 1
	mov	DWORD PTR _j$[ebp], eax

; 78   : 				}

	jmp	SHORT $LN4@getMaxSum2
$LN5@getMaxSum2:

; 79   : 				summid = leftMax + rightMax + array[mid];

	mov	eax, DWORD PTR _leftMax$[ebp]
	add	eax, DWORD PTR _rightMax$[ebp]
	mov	ecx, DWORD PTR _mid$[ebp]
	mov	edx, DWORD PTR _array$[ebp]
	add	eax, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR _summid$[ebp], eax

; 80   : 				more = sumLeft > sumRight ? sumLeft : sumRight;

	mov	eax, DWORD PTR _sumLeft$[ebp]
	cmp	eax, DWORD PTR _sumRight$[ebp]
	jle	SHORT $LN14@getMaxSum2
	mov	ecx, DWORD PTR _sumLeft$[ebp]
	mov	DWORD PTR tv144[ebp], ecx
	jmp	SHORT $LN15@getMaxSum2
$LN14@getMaxSum2:
	mov	edx, DWORD PTR _sumRight$[ebp]
	mov	DWORD PTR tv144[ebp], edx
$LN15@getMaxSum2:
	mov	eax, DWORD PTR tv144[ebp]
	mov	DWORD PTR _more$[ebp], eax

; 81   : 				return summid > more ? summid : more;

	mov	eax, DWORD PTR _summid$[ebp]
	cmp	eax, DWORD PTR _more$[ebp]
	jle	SHORT $LN16@getMaxSum2
	mov	ecx, DWORD PTR _summid$[ebp]
	mov	DWORD PTR tv146[ebp], ecx
	jmp	SHORT $LN17@getMaxSum2
$LN16@getMaxSum2:
	mov	edx, DWORD PTR _more$[ebp]
	mov	DWORD PTR tv146[ebp], edx
$LN17@getMaxSum2:
	mov	eax, DWORD PTR tv146[ebp]
$LN1@getMaxSum2:

; 82   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 328				; 00000148H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_getMaxSum2 ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _getMaxSum
_TEXT	SEGMENT
tv84 = -244						; size = 4
tv82 = -244						; size = 4
_sumRight$ = -44					; size = 4
_sumLeft$ = -32						; size = 4
_more$ = -20						; size = 4
_maxValue$ = -8						; size = 4
_array$ = 8						; size = 4
_left$ = 12						; size = 4
_right$ = 16						; size = 4
_getMaxSum PROC						; COMDAT

; 18   : int getMaxSum(int array[],int left,int right) {

	push	ebp
	mov	ebp, esp
	sub	esp, 244				; 000000f4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-244]
	mov	ecx, 61					; 0000003dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 19   : 				if (left == right)

	mov	eax, DWORD PTR _left$[ebp]
	cmp	eax, DWORD PTR _right$[ebp]
	jne	SHORT $LN2@getMaxSum

; 20   : 				{
; 21   : 								return array[left];

	mov	eax, DWORD PTR _left$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	eax, DWORD PTR [ecx+eax*4]
	jmp	$LN1@getMaxSum
$LN2@getMaxSum:

; 22   : 				}
; 23   : 				int maxValue ;
; 24   : 				int more;
; 25   : 				maxValue = sum(array, left, right);

	mov	eax, DWORD PTR _right$[ebp]
	push	eax
	mov	ecx, DWORD PTR _left$[ebp]
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_sum
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _maxValue$[ebp], eax

; 26   : 				int sumLeft = getMaxSum(array, left,right -1);

	mov	eax, DWORD PTR _right$[ebp]
	sub	eax, 1
	push	eax
	mov	ecx, DWORD PTR _left$[ebp]
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_getMaxSum
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _sumLeft$[ebp], eax

; 27   : 				int sumRight = getMaxSum(array, left+1,right);

	mov	eax, DWORD PTR _right$[ebp]
	push	eax
	mov	ecx, DWORD PTR _left$[ebp]
	add	ecx, 1
	push	ecx
	mov	edx, DWORD PTR _array$[ebp]
	push	edx
	call	_getMaxSum
	add	esp, 12					; 0000000cH
	mov	DWORD PTR _sumRight$[ebp], eax

; 28   : 				more = sumLeft > sumRight ? sumLeft : sumRight;

	mov	eax, DWORD PTR _sumLeft$[ebp]
	cmp	eax, DWORD PTR _sumRight$[ebp]
	jle	SHORT $LN4@getMaxSum
	mov	ecx, DWORD PTR _sumLeft$[ebp]
	mov	DWORD PTR tv82[ebp], ecx
	jmp	SHORT $LN5@getMaxSum
$LN4@getMaxSum:
	mov	edx, DWORD PTR _sumRight$[ebp]
	mov	DWORD PTR tv82[ebp], edx
$LN5@getMaxSum:
	mov	eax, DWORD PTR tv82[ebp]
	mov	DWORD PTR _more$[ebp], eax

; 29   : 				return maxValue > more ? maxValue : more;

	mov	eax, DWORD PTR _maxValue$[ebp]
	cmp	eax, DWORD PTR _more$[ebp]
	jle	SHORT $LN6@getMaxSum
	mov	ecx, DWORD PTR _maxValue$[ebp]
	mov	DWORD PTR tv84[ebp], ecx
	jmp	SHORT $LN7@getMaxSum
$LN6@getMaxSum:
	mov	edx, DWORD PTR _more$[ebp]
	mov	DWORD PTR tv84[ebp], edx
$LN7@getMaxSum:
	mov	eax, DWORD PTR tv84[ebp]
$LN1@getMaxSum:

; 30   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 244				; 000000f4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_getMaxSum ENDP
_TEXT	ENDS
; Function compile flags: /Odtp /RTCsu /ZI
; File C:\Users\Administrator\source\repos\chapter13\max_sum_subarray.c
;	COMDAT _sum
_TEXT	SEGMENT
_sum$ = -20						; size = 4
_i$ = -8						; size = 4
_array$ = 8						; size = 4
_left$ = 12						; size = 4
_right$ = 16						; size = 4
_sum	PROC						; COMDAT

; 32   : int sum(int array[],int left,int right) {

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
	mov	ecx, OFFSET __75F1C0F6_max_sum_subarray@c
	call	@__CheckForDebuggerJustMyCode@4

; 33   : 				int i;
; 34   : 				int sum = 0;

	mov	DWORD PTR _sum$[ebp], 0

; 35   : 				for (i = left; i <=right ; i++)

	mov	eax, DWORD PTR _left$[ebp]
	mov	DWORD PTR _i$[ebp], eax
	jmp	SHORT $LN4@sum
$LN2@sum:
	mov	eax, DWORD PTR _i$[ebp]
	add	eax, 1
	mov	DWORD PTR _i$[ebp], eax
$LN4@sum:
	mov	eax, DWORD PTR _i$[ebp]
	cmp	eax, DWORD PTR _right$[ebp]
	jg	SHORT $LN3@sum

; 36   : 				{
; 37   : 								sum += array[i];

	mov	eax, DWORD PTR _i$[ebp]
	mov	ecx, DWORD PTR _array$[ebp]
	mov	edx, DWORD PTR _sum$[ebp]
	add	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _sum$[ebp], edx

; 38   : 				}

	jmp	SHORT $LN2@sum
$LN3@sum:

; 39   : 				return sum;

	mov	eax, DWORD PTR _sum$[ebp]

; 40   : }

	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_sum	ENDP
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
