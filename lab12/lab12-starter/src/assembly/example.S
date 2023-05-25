.data
	s:		.string "Yiran!"
	

.section .text
.globl 	draw
.type 	draw,	@function
draw:
		
		addi 	sp,	sp,	-4
		sw 		ra,	0(sp)

		li 		a0,	80
		li 		a1,	40
		li              a2,     40
		li 		a3,	0xF81F
		jal 	LCD_DrawCircle
		
		li              a0,     55
		li              a1,     30
		la              t0,s
		mv              a2,     t0
		li              a3,     0x07FE
		jal       LCD_ShowString

		lw 		ra,	0(sp)
		addi 	sp,	sp,	4
		ret 