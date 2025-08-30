/* a startup file for cortexm3.c
@copyright: Ebram
*/

/*SRAM 0x20000000 */

/*this command is for the assymbler to create a section named .vectors*/
.section .vectors

/*set the start of the stack pointer*/
.word 0x20001000 /*stack top address*/
.word _reset /*1 reset*/
.word Vector_handler /*2 NMI*/
.word Vector_handler /*3 Hard Fault*/
.word Vector_handler /*4 MM Fault*/
.word Vector_handler /*5 Bus Fault*/
.word Vector_handler /*6 Usage Fault*/
.word Vector_handler /*7 reserved*/
.word Vector_handler /*8 reserved*/
.word Vector_handler /*9 reserved*/
.word Vector_handler /*10 reserved*/
.word Vector_handler /*11 SV call*/
.word Vector_handler /*12 Debug reserved*/
.word Vector_handler /*13 reserved*/
.word Vector_handler /*14 PendSV*/
.word Vector_handler /*15 SysTick*/
.word Vector_handler /*16 IRQ0*/
.word Vector_handler /*17 IRQ1*/
.word Vector_handler /*18 IRQ2*/
.word Vector_handler /*19 ...*/
		/* on to IRQ67 */


.section .text

_reset:
	bl main /*branch label to main*/
	b . /*if you exit the main, return to it back (loop 3la nafsak)*/
	
.thumb_func
	
Vector_handler:
	b _reset