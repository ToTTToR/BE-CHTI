	PRESERVE8
	THUMB   
		
	import Son
; ====================== zone de réservation de données,  ======================================
;Section RAM (read only) :
	area    mesdata,data,readonly
	include Driver/DriverJeuLaser.inc
	import LongueurSon

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
	push {lr,R4-R11}
	ldr R0,=Son
	ldr R3,=Iterateur
	ldr R3,[R3] ; R3 fait office de Iterateur
	ldr R1,=LongueurSon ;Longueur du son
	ldr R1,[R1]
	cmp R1,R3 ;on regarde si on a atteint la longueur du son
	beq fin
	ldrsh R0,[R0,R3,lsl#1]
	ldr R2,=SortieSon
	add R0,#32768
	mov R1,#91
	sdiv R0,R0,R1
	push{r0}
	bl PWM_Set_Value_TIM3_Ch3
	pop{r0}
	str R0,[R2]
	
	ldr R3,=Iterateur
	str R3,[R3,#1]
	;ldr R1,[R3]
	;add R1,#1
	;str R1,[R3]
fin 
	ldr R3,=Iterateur
	ldr R3,[R3]
	ldr R1,=LongueurSon
	ldr R1,[R1]
	cmp R1,R3
	bne fin2
	mov R0,#0
	bl PWM_Set_Value_TIM3_Ch3
fin2
	pop {lr,R4-R11}
	bx lr
	endp
	END	