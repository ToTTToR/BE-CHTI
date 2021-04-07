	PRESERVE8
	THUMB   
		

; ====================== zone de réservation de données,  ======================================
;Section RAM (read only) :
	area    mesdata,data,readonly
	include Driver/DriverJeuLaser.inc
	
;Section RAM (read write):
	area    maram,data,readwrite
	export callback	
FlagCligno dcd 0
; ===============================================================================================
	export FlagCligno


		
;Section ROM code (read only) :		
	area    moncode,code,readonly
; écrire le code ici		
	
	

callback proc	
	push{R4-R11,lr}
	ldr R1,=FlagCligno
	ldr R0,[R1]
	cmp R0,#1
	beq truc
	mov R0,#1
	push {R1,R0}
	mov r0,#1
	bl GPIOB_Clear
	b fin
truc 
	mov R0,#0
	push {R1,R0}
	mov r0,#1
    bl GPIOB_Set
fin
	pop{R1,R0}
	str R0,[R1]
	pop{R4-R11,lr}
	bx lr
	endp		
	END	