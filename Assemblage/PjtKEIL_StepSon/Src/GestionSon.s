	PRESERVE8
	THUMB   
		
	import Son
; ====================== zone de réservation de données,  ======================================
;Section RAM (read only) :
	area    mesdata,data,readonly


;Section RAM (read write):
	area    maram,data,readwrite
SortieSon dcw 0
Iterateur dcd 0
	export CallbackSon
	export SortieSon
	export Iterateur
; ===============================================================================================
	


		
;Section ROM code (read only) :		
	area    moncode,code,readonly
; écrire le code ici

CallbackSon proc
	ldr R0,=Son
	ldr R3,=Iterateur
	ldr R3,[R3]
	mov R1,#0x2B10
	cmp R1,R3
	beq fin
	ldrsh R0,[R0,R3]
	ldr R2,=SortieSon
	add R0,#32768
	mov R1,#91
	sdiv R0,R0,R1
	str R0,[R2]
	
	ldr R3,=Iterateur
	ldr R1,[R3]
	add R1,#2
	str R1,[R3]
fin
	bx lr
	endp
	END	