            Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 1

038F:0016  CEE8			;*ta_8		dw	0CEE8h
038F:0016  E8 CE				db	0E8h,0CEh
038F:0018  01			data_10		db	1
038F:0019  12			data_11		db	12h
038F:001A  4600			data_12		dw	4600h
038F:001C  0A07			data_13		dw	0A07h
038F:001E  02 E8				add	ch,al
038F:0020  C5 01				lds	ax,dword ptr [bx+di]	; Load 32 bit ptr
038F:0022  1B 00				sbb	ax,[bx+si]
038F:0024  0A 04				or	al,[si]
038F:0026  0A 02				or	al,[bp+si]
038F:0028  EB 02				jmp	short loc_1		; (002C)
038F:002A  90					nop
038F:002B  00 E8				add	al,ch
038F:002D  B8 2401				mov	ax,2401h
038F:0030  00 A4 0A0C				add	byte ptr ds:[0A0Ch][si],ah	; (0009:0A0C=0A7h)
038F:0034  02 E8				add	ch,al
038F:0036  AF					scasw				; Scan es:[di] for ax
038F:0037  01 31				add	[bx+di],si
038F:0039  00 EB				add	bl,ch
038F:003B  10 FF				adc	bh,bh
038F:003D  03 0A				add	cx,[bp+si]
038F:003F  02 4B 42				add	cl,[bp+di+42h]
038F:0042  00 EB				add	bl,ch
038F:0044  0C 00				or	al,0
038F:0046  00					db	0
038F:0047  00					db	0
038F:0048  00					db	0
038F:0049  00 00				add	[bx+si],al
038F:004B  00 E8				add	al,ch
038F:004D  98			data_16		db	98h			; Data table (indexed access)
038F:004E  01 3C				add	[si],di
038F:0050  00 E9				add	cl,ch
038F:0052  32 01				xor	al,[bx+di]
038F:0054  EB 10				jmp	short loc_2		; (0066)
038F:0056  FF 03				inc	word ptr [bp+di]
038F:0058  0A 02				or	al,[bp+si]
038F:005A  4B					dec	bx
038F:005B  42					inc	dx
038F:005C  00 EB				add	bl,ch
038F:005E  0C 00				or	al,0
038F:0060  00					db	0
038F:0061  00					db	0
038F:0062  00					db	0
038F:0063  00 00				add	[bx+si],al
038F:0065  00 E8				add	al,ch
038F:0067  7E 01				jle	loc_3			; Jump if < or =
038F:0069  56					push	si
038F:006A			loc_3:
038F:006A  00 E9				add	cl,ch
038F:006C  18 01				sbb	[bx+di],al
038F:006E  EB 10				jmp	short loc_4		; (0080)
038F:0070  FF 03				inc	word ptr [bp+di]
038F:0072  020A			data_18		dw	20Ah
038F:0074  4B					dec	bx
038F:0075  42					inc	dx
038F:0076  00 EB				add	bl,ch
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 2

038F:0078  0C 00				or	al,0
038F:007A  00					db	0
038F:007B  00					db	0
038F:007C  00					db	0
038F:007D  00 00				add	[bx+si],al
038F:007F  00 E8				add	al,ch
038F:0081  64					db	64h
038F:0082  7001			data_20		dw	7001h
038F:0084  00 E9				add	cl,ch
038F:0086  FE 00				inc	byte ptr [bx+si]
038F:0088  EB 10				jmp	short loc_5		; (009A)
							                        ;* No entry point to code
038F:008A  FF 03				inc	word ptr [bp+di]
038F:008C  0A 02				or	al,[bp+si]
038F:008E  4B					dec	bx
038F:008F  42					inc	dx
038F:0090  00 EB				add	bl,ch
038F:0092  0C 00				or	al,0
038F:0094  00					db	0
038F:0095  00					db	0
038F:0096  0000			data_21		dw	0
038F:0098  00 00				add	[bx+si],al
038F:009A			loc_5:
038F:009A  E8 014A				call	sub_3			; (01E7)
038F:009D  8A 00				mov	al,[bx+si]
038F:009F  E9 00E4				jmp	loc_17			; (0186)
038F:00A2  EB 10				jmp	short loc_6		; (00B4)
038F:00A4  B3 07				mov	bl,7
038F:00A6  0A 02				or	al,[bp+si]
038F:00A8  4B					dec	bx
038F:00A9  42					inc	dx
038F:00AA  00 EB				add	bl,ch
038F:00AC  0C 00				or	al,0
038F:00AE  00					db	0
038F:00AF  00					db	0
038F:00B0  00					db	0
038F:00B1  00 00				add	[bx+si],al
038F:00B3  00 E8				add	al,ch
038F:00B5  30 01				xor	[bx+di],al
038F:00B7  A4					movsb				; Mov [si] to es:[di]
038F:00B8  00 E9				add	cl,ch
038F:00BA  CA EB00				retf	0EB00h			; Return far
038F:00BD  10 B4 0A06				adc	data_97[si],dh		; (038F:0A06=0)
038F:00C1  02 4B 42				add	cl,[bp+di+42h]
038F:00C4  00 EB				add	bl,ch
038F:00C6  0C 00				or	al,0
038F:00C8  00					db	0
038F:00C9  00					db	0
038F:00CA  00					db	0
038F:00CB  00 00				add	[bx+si],al
038F:00CD  00 E8				add	al,ch
038F:00CF  16					push	ss
038F:00D0  01 BE E900				add	[bp-1700h],di
038F:00D4  B0 00				mov	al,0
038F:00D6  EB 10				jmp	short loc_7		; (00E8)
038F:00D8  B4 06				mov	ah,6
038F:00DA  0A 02				or	al,[bp+si]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 3

038F:00DC  4B					dec	bx
038F:00DD  42					inc	dx
038F:00DE  00 EB				add	bl,ch
038F:00E0  0C 00				or	al,0
038F:00E2  00					db	0
038F:00E3  00					db	0
038F:00E4  00					db	0
038F:00E5  00 00				add	[bx+si],al
038F:00E7  00 E8				add	al,ch
038F:00E9  FC					cld				; Clear direction
038F:00EA  00 D8				add	al,bl
038F:00EC  00 E9				add	cl,ch
038F:00EE  96					xchg	si,ax
038F:00EF  00 EB				add	bl,ch
038F:00F1  10 B4 0A06				adc	data_97[si],dh		; (038F:0A06=0)
038F:00F5  02 4B 42				add	cl,[bp+di+42h]
038F:00F8  00 EB				add	bl,ch
038F:00FA  0C 00				or	al,0
038F:00FC  00					db	0
038F:00FD  00					db	0
038F:00FE  00					db	0
038F:00FF  00 00				add	[bx+si],al
038F:0101  00 E8				add	al,ch
038F:0103  E2 00				loop	locloop_8		; Loop if cx > 0


038F:0105			locloop_8:
038F:0105  F2					db	0F2h
038F:0106  00 EB				add	bl,ch
038F:0108  907D 10EB		data_26		dw	907Dh, 10EBh
038F:010C  06B4 020A		data_27		dw	6B4h, 20Ah
038F:0110  424B EB00		data_28		dw	424Bh, 0EB00h
038F:0114  000C 0000		data_30		dw	0Ch, 0
038F:0118  0000 0000		data_34		dd	00000h
038F:011C			loc_9:
038F:011C  C8E8 0C00		data_37		dw	0C8E8h, 0C00h
038F:0120  EB01 9063		data_38		dw	0EB01h, 9063h
038F:0124  10EB 06B4		data_40		dw	10EBh, 6B4h
038F:0128  020A 424B		data_44		dw	20Ah, 424Bh
038F:012C  EB00 000C		data_46		dw	0EB00h, 0Ch
038F:0130  0000 0000		data_47		dd	00000h
038F:0134  00			data_48		db	0
038F:0135  00 E8				add	al,ch
038F:0137  AE					scasb				; Scan es:[di] for al
038F:0138  00 26 EB01				add	byte ptr ds:[0EB01h],ah	; (038F:EB01=2Bh)
038F:013C  49					dec	cx
038F:013D  90					nop

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_2		proc	near
038F:013E  1E					push	ds
038F:013F  50					push	ax
038F:0140  B8 0040				mov	ax,40h
038F:0143  8E D8				mov	ds,ax
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 4

038F:0145  9F					lahf				; Load ah from flags
038F:0146  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:014C  75 0C				jnz	loc_12			; Jump if not zero
038F:014E  F0> 81 26 0314 FDFF	                           lock	and	word ptr ds:[314h],0FDFFh	; (0040:0314=3200h)
038F:0155			loc_11:
038F:0155  9E					sahf				; Store ah into flags
038F:0156  58					pop	ax
038F:0157  1F					pop	ds
038F:0158  EB 03				jmp	short loc_13		; (015D)
038F:015A			loc_12:
038F:015A  FA					cli				; Disable interrupts
038F:015B  EB F8				jmp	short loc_11		; (0155)
038F:015D			loc_13:
038F:015D  C3					retn
				sub_2		endp

							                        ;* No entry point to code
038F:015E  1E					push	ds
038F:015F  50					push	ax
038F:0160  B8 0040				mov	ax,40h
038F:0163  8E D8				mov	ds,ax
038F:0165  9F					lahf				; Load ah from flags
038F:0166  F7 06 0314 0003			test	word ptr ds:[314h],3	; (0040:0314=3200h)
038F:016C  75 14				jnz	loc_15			; Jump if not zero
038F:016E  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:0174  75 0C				jnz	loc_15			; Jump if not zero
038F:0176  F0> 81 0E 0314 0200	                           lock	or	word ptr ds:[314h],200h	; (0040:0314=3200h)
038F:017D			loc_14:
038F:017D  9E					sahf				; Store ah into flags
038F:017E  58					pop	ax
038F:017F  1F					pop	ds
038F:0180  EB 03				jmp	short loc_16		; (0185)
038F:0182			loc_15:
038F:0182  FB					sti				; Enable interrupts
038F:0183  EB F8				jmp	short loc_14		; (017D)
038F:0185			loc_16:
038F:0185  C3					retn
038F:0186			loc_17:
038F:0186  1E					push	ds
038F:0187  50					push	ax
038F:0188  B8 0040				mov	ax,40h
038F:018B  8E D8				mov	ds,ax
038F:018D  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:0193  75 4F				jnz	loc_25			; Jump if not zero
038F:0195  55					push	bp
038F:0196  8B EC				mov	bp,sp
038F:0198  8B 46 0A				mov	ax,[bp+0Ah]
038F:019B  5D					pop	bp
038F:019C  A9 0100				test	ax,100h
038F:019F  75 43				jnz	loc_25			; Jump if not zero
038F:01A1  A9 0200				test	ax,200h
038F:01A4  74 22				jz	loc_21			; Jump if zero
038F:01A6  F0> 81 0E 0314 0200	                           lock	or	word ptr ds:[314h],200h	; (0040:0314=3200h)
038F:01AD  F7 06 0314 0003			test	word ptr ds:[314h],3	; (0040:0314=3200h)
038F:01B3  75 2F				jnz	loc_25			; Jump if not zero
038F:01B5			loc_18:
038F:01B5  86 E0				xchg	ah,al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 5

038F:01B7  FC					cld				; Clear direction
038F:01B8  A8 04				test	al,4
038F:01BA  75 25				jnz	loc_24			; Jump if not zero
038F:01BC			loc_19:
038F:01BC  A8 08				test	al,8
038F:01BE  75 11				jnz	loc_22			; Jump if not zero
038F:01C0  70 19				jo	loc_23			; Jump if overflow=1
038F:01C2			loc_20:
038F:01C2  9E					sahf				; Store ah into flags
038F:01C3  58					pop	ax
038F:01C4  1F					pop	ds
038F:01C5  CA 0002				retf	2			; Return far
038F:01C8			loc_21:
038F:01C8  F0> 81 26 0314 FDFF	                           lock	and	data_67,0FDFFh		; (038F:0314=0)
038F:01CF  EB E4				jmp	short loc_18		; (01B5)
038F:01D1			loc_22:
038F:01D1  70 EF				jo	loc_20			; Jump if overflow=1
038F:01D3  50					push	ax
038F:01D4  B0 7F				mov	al,7Fh
038F:01D6  04 02				add	al,2
038F:01D8  58					pop	ax
038F:01D9  EB E7				jmp	short loc_20		; (01C2)
038F:01DB			loc_23:
038F:01DB  50					push	ax
038F:01DC  32 C0				xor	al,al			; Zero register
038F:01DE  58					pop	ax
038F:01DF  EB E1				jmp	short loc_20		; (01C2)
038F:01E1			loc_24:
038F:01E1  FD					std				; Set direction flag
038F:01E2  EB D8				jmp	short loc_19		; (01BC)
038F:01E4			loc_25:
038F:01E4  58					pop	ax
038F:01E5  1F					pop	ds
038F:01E6  CF					iret				; Interrupt return

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_3		proc	near
038F:01E7  50					push	ax
038F:01E8  55					push	bp
038F:01E9  06					push	es
038F:01EA  2E: 8E 06 000A			mov	es,word ptr cs:[0Ah]	; (038F:000A=3C0h)
038F:01EF  2E: 8B 2E 0010			mov	bp,word ptr cs:[10h]	; (038F:0010=40h)
038F:01F4  B0 01				mov	al,1
038F:01F6  26: 86 46 00				xchg	es:[bp],al
038F:01FA  3C 00				cmp	al,0
038F:01FC  75 51				jne	loc_27			; Jump if not equal
038F:01FE  2E: 83 2E 0010 08			sub	word ptr cs:[10h],8	; (038F:0010=40h)
038F:0204			loc_26:
038F:0204  26: 89 66 02				mov	es:[bp+2],sp
038F:0208  26: 8C 56 04				mov	es:[bp+4],ss
038F:020C  8B C5				mov	ax,bp
038F:020E  26: 8B 6E 06				mov	bp,es:[bp+6]
038F:0212  26: 39 46 00				cmp	es:[bp],ax
038F:0216  75 44				jne	loc_29			; Jump if not equal
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 6

038F:0218  55					push	bp
038F:0219  8B EC				mov	bp,sp
038F:021B  8B 46 08				mov	ax,[bp+8]
038F:021E  5D					pop	bp
038F:021F  06					push	es
038F:0220  17					pop	ss
038F:0221  8B E5				mov	sp,bp
038F:0223  8B E8				mov	bp,ax
038F:0225  2E: 8B 6E 00				mov	bp,cs:[bp]
038F:0229  9C					pushf				; Push flags
038F:022A  2E: FF 5E 00				call	dword ptr cs:[bp]	;*
038F:022E  8B EC				mov	bp,sp
038F:0230  26: 8B 6E 00				mov	bp,es:[bp]
038F:0234  26: 8E 56 04				mov	ss,es:[bp+4]
038F:0238  26: 8B 66 02				mov	sp,es:[bp+2]
038F:023C  26			data_50		db	26h
038F:023D  C6 46 00 00				mov	byte ptr [bp],0
038F:0241  2E: 89 2E 0010			mov	word ptr cs:[10h],bp	; (038F:0010=40h)
038F:0246  07					pop	es
038F:0247  5D					pop	bp
038F:0248  58					pop	ax
038F:0249  83 C4 02				add	sp,2
038F:024C  E9 FF37				jmp	loc_17			; (0186)
038F:024F			loc_27:
038F:024F  013C			data_53		dw	13Ch
038F:0251  74 04				jz	loc_28			; Jump if zero
038F:0253  26: 86 46 00				xchg	es:[bp],al
038F:0257			loc_28:
038F:0257  E8 0012				call	sub_4			; (026C)
038F:025A  EB A8				jmp	short loc_26		; (0204)
038F:025C			loc_29:
038F:025C  2E: 3B 2E 000C			cmp	bp,word ptr cs:[0Ch]	; (038F:000C=0)
038F:0261  72 F4				jb	loc_28			; Jump if below
038F:0263  8B E8				mov	bp,ax
038F:0265  26: C6 46 00 03			mov	byte ptr es:[bp],3
038F:026A  EB EB				jmp	short loc_28		; (0257)
				sub_3		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_4		proc	near
038F:026C  2E: 8B 2E 000E			mov	bp,word ptr cs:[0Eh]	; (038F:000E=40h)
038F:0271			loc_30:
038F:0271  26: 80 7E 00 00			cmp	byte ptr es:[bp],0
038F:0276  75 12				jne	loc_32			; Jump if not equal
038F:0278  B0 01				mov	al,1
038F:027A  26: 86 46 00				xchg	es:[bp],al
038F:027E  3C 00				cmp	al,0
038F:0280  74 14				je	loc_33			; Jump if equal
038F:0282  3C 01				cmp	al,1
038F:0284  74 04				je	loc_32			; Jump if equal
038F:0286  26: 88 46 00				mov	es:[bp],al
038F:028A			loc_32:
038F:028A  2E: 3B 2E 000C			cmp	bp,word ptr cs:[0Ch]	; (038F:000C=0)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 7

038F:028F  74 06				je	loc_34			; Jump if equal
038F:0291  83 ED 08				sub	bp,8
038F:0294  EB DB				jmp	short loc_30		; (0271)
038F:0296			loc_33:
038F:0296  C3					retn
038F:0297			loc_34:
038F:0297  E8 FEA4				call	sub_2			; (013E)

038F:029A			locloop_35:
038F:029A  B0 FF				mov	al,0FFh
038F:029C  21E6			data_56		dw	21E6h
038F:029E  E6			data_57		db	0E6h
038F:029F  A1 CE8C				mov	ax,word ptr ds:[0CE8Ch]	; (0009:CE8C=0B77h)
038F:02A2  8E DE				mov	ds,si
038F:02A4  BE 02CB				mov	si,2CBh
038F:02A7  50			data_59		db	50h
038F:02A8  1E					push	ds
038F:02A9  B8 0070				mov	ax,70h
038F:02AC  8E D8				mov	ds,ax
038F:02AE  F6 06 0337 01			test	byte ptr ds:[337h],1	; (0070:0337=0)
038F:02B3  1F					pop	ds
038F:02B4  58					pop	ax
038F:02B5  74 05				jz	loc_36			; Jump if zero
038F:02B7  9A 0070:0338		;*		call	far ptr sub_1		;*(0070:0338)
038F:02B7  9A					db	9Ah
038F:02B8  0338 0070				dw	338h, 70h
038F:02BC			loc_36:
038F:02BC  AC					lodsb				; String [si] to al
038F:02BD  3C 24				cmp	al,24h			; '$'
038F:02BF  74 08				je	loc_38			; Jump if equal
038F:02C1  B3 07				mov	bl,7
038F:02C3  0EB4 10CD		data_63		dw	0EB4h, 10CDh
038F:02C7  F3EB			data_64		dw	0F3EBh
038F:02C9			loc_38:
038F:02C9  FEEB			data_65		dw	0FEEBh
038F:02CB  0A0D 0D07		data_66		dw	0A0Dh, 0D07h
038F:02CF  0A 8F E0A5				or	cl,byte ptr ds:[0E0A5h][bx]	; (0000:E0A5=0EBh)
038F:02D3  A5					movsw				; Mov [si] to es:[di]
038F:02D4  AF					scasw				; Scan es:[di] for ax
038F:02D5  AE					scasb				; Scan es:[di] for al
038F:02D6  AB					stosw				; Store ax to es:[di]
038F:02D7  AD					lodsw				; String [si] to ax
038F:02D8  A5					movsw				; Mov [si] to es:[di]
038F:02D9  AD					lodsw				; String [si] to ax
038F:02DA  A8 A5				test	al,0A5h
038F:02DC  20 A2 E3AD				and	[bp+si-1C53h],ah
038F:02E0  E2 E0		;*		loop	locloop_37		;*Loop if cx > 0

038F:02E0  E2 E0				db	0E2h,0E0h
038F:02E2  A5					movsw				; Mov [si] to es:[di]
038F:02E3  AD					lodsw				; String [si] to ax
038F:02E4  AD					lodsw				; String [si] to ax
038F:02E5  A5					movsw				; Mov [si] to es:[di]
038F:02E6  A3 20AE				mov	word ptr ds:[20AEh],ax	; (0000:20AE=0A02Bh)
038F:02E9  E1 E2		;*		loopz	locloop_39		;*Loop if zf=1, cx>0

038F:02E9  E1 E2				db	0E1h,0E2h
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 8

038F:02EB  A5					movsw				; Mov [si] to es:[di]
038F:02EC  AA					stosb				; Store al to es:[di]
038F:02ED  A0 0A0D				mov	al,byte ptr ds:[0A0Dh]	; (0000:0A0D=0)
038F:02F0  91					xchg	cx,ax
038F:02F1  A8 E1				test	al,0E1h
038F:02F3  E2 A5				loop	locloop_35		; Loop if cx > 0

038F:02F5  AC					lodsb				; String [si] to al
038F:02F6  A0 AE20				mov	al,byte ptr ds:[0AE20h]	; (0000:AE20=2Eh)
038F:02F9  E1 E2		;*		loopz	locloop_40		;*Loop if zf=1, cx>0

038F:02F9  E1 E2				db	0E1h,0E2h
038F:02FB  A0 AEAD				mov	al,byte ptr ds:[0AEADh]	; (0000:AEAD=38h)
038F:02FE  A2 A5AB				mov	byte ptr ds:[0A5ABh],al	; (0000:A5AB=0C3h)
038F:0301  AD					lodsw				; String [si] to ax
038F:0302  A0 0A0D				mov	al,byte ptr ds:[0A0Dh]	; (0000:0A0D=0)
038F:0305  24 07				and	al,7
038F:0307  00 09				add	[bx+di],cl
038F:0309  69					db	69h
038F:030A  00 00				add	[bx+si],al
038F:030C  06					push	es
038F:030D  00 06 0000				add	byte ptr ds:[0],al	; (0000:0000=68h)
038F:0311  00					db	0
038F:0312  00					db	0
038F:0313  00 00				add	[bx+si],al
038F:0315  00 C6				add	dh,al
038F:0317  0007[00]				db	7 dup (0)
038F:031E  46					inc	si
038F:031F  01 00				add	[bx+si],ax
038F:0321  00					db	0
038F:0322  00					db	0
038F:0323  00 00				add	[bx+si],al
038F:0325  00 C6				add	dh,al
038F:0327  01 00				add	[bx+si],ax
038F:0329  00					db	0
038F:032A  00					db	0
038F:032B  00 00				add	[bx+si],al
038F:032D  00 46 02				add	[bp+2],al
038F:0330  00			data_69		db	0
038F:0331  00					db	0
038F:0332  00					db	0
038F:0333  00 00				add	[bx+si],al
038F:0335  00 C6				add	dh,al
038F:0337  02			data_70		db	2
038F:0338  00					db	0
038F:0339  00					db	0
038F:033A  00					db	0
038F:033B  00 00				add	[bx+si],al
038F:033D  00 46 03				add	[bp+3],al
038F:0340  00					db	0
038F:0341  00					db	0
038F:0342  00					db	0
038F:0343  00 00				add	[bx+si],al
038F:0345  00 C6				add	dh,al
038F:0347  03 00				add	ax,[bx+si]
038F:0349  00					db	0
038F:034A  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 9

038F:034B  00 00				add	[bx+si],al
038F:034D  00 46 04				add	[bp+4],al
038F:0350  00 00				add	[bx+si],al
038F:0352  06					push	es
038F:0353  06					push	es
038F:0354  FB					sti				; Enable interrupts
038F:0355  8D					db	8Dh
038F:0356  C6 04 00				mov	byte ptr [si],0
038F:0359  00FD[00]				db	253 dup (0)
038F:0456  08 00				or	[bx+si],al
038F:0458  007E[00]		data_72		db	126 dup (0)
038F:04D6  10 00				adc	[bx+si],al
038F:04D8  0040[00]				db	64 dup (0)
038F:0518  00			data_74		db	0			; Data table (indexed access)
038F:0519  00					db	0
038F:051A  00					db	0
038F:051B  00					db	0
038F:051C  00					db	0
038F:051D  00					db	0
038F:051E  00					db	0
038F:051F  00					db	0
038F:0520  00					db	0
038F:0521  00					db	0
038F:0522  00					db	0
038F:0523  00					db	0
038F:0524  00					db	0
038F:0525  00					db	0
038F:0526  00					db	0
038F:0527  00					db	0
038F:0528  00					db	0
038F:0529  00					db	0
038F:052A  00					db	0
038F:052B  00					db	0
038F:052C  00					db	0
038F:052D  00					db	0
038F:052E  00					db	0
038F:052F  00					db	0
038F:0530  00					db	0
038F:0531  00					db	0
038F:0532  00					db	0
038F:0533  00					db	0
038F:0534  00					db	0
038F:0535  00					db	0
038F:0536  00					db	0
038F:0537  00					db	0
038F:0538  00					db	0
038F:0539  00					db	0
038F:053A  00					db	0
038F:053B  00					db	0
038F:053C  00					db	0
038F:053D  00					db	0
038F:053E  00					db	0
038F:053F  00					db	0
038F:0540  00					db	0
038F:0541  00					db	0
038F:0542  00					db	0
038F:0543  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 10

038F:0544  00					db	0
038F:0545  00					db	0
038F:0546  00					db	0
038F:0547  00					db	0
038F:0548  00					db	0
038F:0549  00					db	0
038F:054A  00					db	0
038F:054B  00					db	0
038F:054C  00					db	0
038F:054D  00					db	0
038F:054E  00					db	0
038F:054F  00					db	0
038F:0550  00					db	0
038F:0551  00					db	0
038F:0552  00					db	0
038F:0553  00 00				add	[bx+si],al
038F:0555  00 18				add	[bx+si],bl
038F:0557  00					db	0
038F:0558  003B[00]				db	59 dup (0)
038F:0593  0000			data_76		dw	0
038F:0595  00					db	0
038F:0596  00					db	0
038F:0597  00					db	0
038F:0598  00					db	0
038F:0599  00					db	0
038F:059A  00					db	0
038F:059B  00					db	0
038F:059C  00					db	0
038F:059D  00					db	0
038F:059E  00					db	0
038F:059F  00					db	0
038F:05A0  00					db	0
038F:05A1  00					db	0
038F:05A2  00					db	0
038F:05A3  00					db	0
038F:05A4  00					db	0
038F:05A5  00					db	0
038F:05A6  00					db	0
038F:05A7  00					db	0
038F:05A8  00					db	0
038F:05A9  00					db	0
038F:05AA  00					db	0
038F:05AB  00					db	0
038F:05AC  00					db	0
038F:05AD  00					db	0
038F:05AE  00					db	0
038F:05AF  00					db	0
038F:05B0  00					db	0
038F:05B1  00					db	0
038F:05B2  00					db	0
038F:05B3  00					db	0
038F:05B4  00					db	0
038F:05B5  00					db	0
038F:05B6  00					db	0
038F:05B7  00					db	0
038F:05B8  00					db	0
038F:05B9  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 11

038F:05BA  00					db	0
038F:05BB  00					db	0
038F:05BC  00					db	0
038F:05BD  00					db	0
038F:05BE  00					db	0
038F:05BF  00					db	0
038F:05C0  00					db	0
038F:05C1  00					db	0
038F:05C2  00					db	0
038F:05C3  00					db	0
038F:05C4  00					db	0
038F:05C5  00					db	0
038F:05C6  00					db	0
038F:05C7  00					db	0
038F:05C8  00					db	0
038F:05C9  00					db	0
038F:05CA  00					db	0
038F:05CB  00					db	0
038F:05CC  00					db	0
038F:05CD  00					db	0
038F:05CE  00					db	0
038F:05CF  00					db	0
038F:05D0  00					db	0
038F:05D1  00					db	0
038F:05D2  00					db	0
038F:05D3  00 00				add	[bx+si],al
038F:05D5  00 20				add	[bx+si],ah
038F:05D7  00					db	0
038F:05D8  003C[00]				db	60 dup (0)
038F:0614  00			data_78		db	0
038F:0615  00					db	0
038F:0616  00					db	0
038F:0617  00					db	0
038F:0618  00					db	0
038F:0619  00					db	0
038F:061A  00					db	0
038F:061B  00					db	0
038F:061C  00					db	0
038F:061D  00					db	0
038F:061E  00					db	0
038F:061F  00					db	0
038F:0620  00					db	0
038F:0621  00					db	0
038F:0622  00					db	0
038F:0623  00					db	0
038F:0624  00					db	0
038F:0625  00					db	0
038F:0626  00					db	0
038F:0627  00					db	0
038F:0628  00					db	0
038F:0629  00					db	0
038F:062A  00					db	0
038F:062B  00					db	0
038F:062C  00					db	0
038F:062D  00					db	0
038F:062E  00					db	0
038F:062F  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 12

038F:0630  00					db	0
038F:0631  00					db	0
038F:0632  00					db	0
038F:0633  00					db	0
038F:0634  00					db	0
038F:0635  00					db	0
038F:0636  00					db	0
038F:0637  00					db	0
038F:0638  00					db	0
038F:0639  00					db	0
038F:063A  00					db	0
038F:063B  00					db	0
038F:063C  00					db	0
038F:063D  00					db	0
038F:063E  00					db	0
038F:063F  00					db	0
038F:0640  00					db	0
038F:0641  00					db	0
038F:0642  00					db	0
038F:0643  00					db	0
038F:0644  00					db	0
038F:0645  00					db	0
038F:0646  00					db	0
038F:0647  00					db	0
038F:0648  00					db	0
038F:0649  00					db	0
038F:064A  00					db	0
038F:064B  00					db	0
038F:064C  00					db	0
038F:064D  00					db	0
038F:064E  00					db	0
038F:064F  00					db	0
038F:0650  00					db	0
038F:0651  00					db	0
038F:0652  00					db	0
038F:0653  00 00				add	[bx+si],al
038F:0655  00 28				add	[bx+si],ch
038F:0657  00					db	0
038F:0658  007E[00]				db	126 dup (0)
038F:06D6  30 00				xor	[bx+si],al
038F:06D8  0012[00]				db	18 dup (0)
038F:06EA  00			data_81		db	0
038F:06EB  00			data_82		db	0
038F:06EC  00					db	0
038F:06ED  00					db	0
038F:06EE  0000			data_83		dw	0
038F:06F0  00					db	0
038F:06F1  00					db	0
038F:06F2  00					db	0
038F:06F3  00					db	0
038F:06F4  00					db	0
038F:06F5  00					db	0
038F:06F6  0000			data_85		dw	0
038F:06F8  00					db	0
038F:06F9  00					db	0
038F:06FA  00					db	0
038F:06FB  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 13

038F:06FC  00					db	0
038F:06FD  00					db	0
038F:06FE  00					db	0
038F:06FF  00					db	0
038F:0700  0000			data_86		dw	0
038F:0702  00					db	0
038F:0703  00					db	0
038F:0704  00					db	0
038F:0705  00					db	0
038F:0706  00					db	0
038F:0707  00					db	0
038F:0708  00					db	0
038F:0709  00					db	0
038F:070A  00					db	0
038F:070B  00					db	0
038F:070C  00					db	0
038F:070D  00					db	0
038F:070E  00					db	0
038F:070F  00					db	0
038F:0710  00					db	0
038F:0711  00					db	0
038F:0712  00					db	0
038F:0713  00					db	0
038F:0714  00					db	0
038F:0715  00					db	0
038F:0716  00					db	0
038F:0717  00					db	0
038F:0718  00					db	0
038F:0719  00					db	0
038F:071A  00					db	0
038F:071B  00					db	0
038F:071C  00					db	0
038F:071D  00					db	0
038F:071E  00					db	0
038F:071F  00					db	0
038F:0720  00					db	0
038F:0721  00					db	0
038F:0722  00					db	0
038F:0723  00					db	0
038F:0724  00					db	0
038F:0725  00					db	0
038F:0726  00					db	0
038F:0727  00					db	0
038F:0728  00					db	0
038F:0729  00					db	0
038F:072A  00					db	0
038F:072B  00					db	0
038F:072C  00					db	0
038F:072D  00					db	0
038F:072E  00					db	0
038F:072F  00					db	0
038F:0730  00					db	0
038F:0731  00					db	0
038F:0732  00					db	0
038F:0733  00					db	0
038F:0734  00					db	0
038F:0735  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 14

038F:0736  00					db	0
038F:0737  00					db	0
038F:0738  00					db	0
038F:0739  00					db	0
038F:073A  00					db	0
038F:073B  00					db	0
038F:073C  00					db	0
038F:073D  00					db	0
038F:073E  00					db	0
038F:073F  00					db	0
038F:0740  00					db	0
038F:0741  00					db	0
038F:0742  00					db	0
038F:0743  00					db	0
038F:0744  00					db	0
038F:0745  00					db	0
038F:0746  00					db	0
038F:0747  00					db	0
038F:0748  00					db	0
038F:0749  00					db	0
038F:074A  00					db	0
038F:074B  00					db	0
038F:074C  00					db	0
038F:074D  00					db	0
038F:074E  00					db	0
038F:074F  00					db	0
038F:0750  00					db	0
038F:0751  00					db	0
038F:0752  00					db	0
038F:0753  00 00				add	[bx+si],al
038F:0755  00 38				add	[bx+si],bh
038F:0757  00					db	0
038F:0758  006C[00]				db	108 dup (0)
038F:07C4  01 91 9101				add	word ptr ds:[9101h][bx+di],dx	; (0000:9101=465h)
038F:07C8  FB					sti				; Enable interrupts
038F:07C9  8D					db	8Dh
038F:07CA  F3					db	0F3h
038F:07CB  03 B7 FB00				add	si,word ptr ds:[0FB00h][bx]	; (0000:FB00=0EB45h)
038F:07CF  8D 2E 8F02				lea	bp,cs:[8F02h]		; Load effective addr
038F:07D3  03 46 30				add	ax,[bp+30h]
038F:07D6  40					inc	ax
038F:07D7  00 04				add	[si],al
038F:07D9  00 C3				add	bl,al
038F:07DB  3C 00				cmp	al,0
038F:07DD  00 06 4D00				add	byte ptr ds:[4D00h],al	; (0000:4D00=45h)
038F:07E1  0E					push	cs
038F:07E2  04 B5				add	al,0B5h
038F:07E4  00 00				add	[bx+si],al
038F:07E6  06					push	es
038F:07E7  00 43 4F				add	[bp+di+4Fh],al
038F:07EA  4D					dec	bp
038F:07EB  4D					dec	bp
038F:07EC  41					inc	cx
038F:07ED  4E					dec	si
038F:07EE  44					inc	sp
038F:07EF  00 CD				add	ch,cl
038F:07F1  20 FF				and	bh,bh
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 15

038F:07F3  9F					lahf				; Load ah from flags
038F:07F4  00 9A FEF0				add	[bp+si-110h],bl
038F:07F8  1D 7FF0				sbb	ax,7FF0h
038F:07FB  01 0E 4B04				add	word ptr ds:[4B04h],cx	; (0000:4B04=0A9AEh)
038F:07FF  01 0E 5604				add	word ptr ds:[5604h],cx	; (0000:5604=0EB7Fh)
038F:0803  01 0E 0E04				add	word ptr ds:[0E04h],cx	; (0000:0E04=0Eh)
038F:0807  04 01				add	al,1
038F:0809  01 01				add	[bx+di],ax
038F:080B  00 02				add	[bp+si],al
038F:080D  000F[FF]				db	15 dup (0FFh)
038F:081C  CC					int	3			; Debug breakpoint
038F:081D  04 FA				add	al,0FAh
038F:081F  05 040E				add	ax,40Eh
038F:0822  14 00				adc	al,0
038F:0824  18 00				sbb	[bx+si],al
038F:0826  0E					push	cs
038F:0827  04 FF				add	al,0FFh
038F:0829  FF					db	0FFh
038F:082A  FF					db	0FFh
038F:082B  FF 00				inc	word ptr [bx+si]
038F:082D  00 00				add	[bx+si],al
038F:082F  00 05				add	[di],al
038F:0831  000F[00]				db	15 dup (0)
038F:0840  CD 21				int	21h			; ??INT Non-standard interrupt
038F:0842  CB					retf				; Return far
				sub_4		endp

038F:0843  000A[00]				db	10 dup (0)
038F:084D  000B[20]				db	11 dup (20h)
038F:0858  00					db	0
038F:0859  00					db	0
038F:085A  00 00				add	[bx+si],al
038F:085C  00 20				add	[bx+si],ah
038F:085E  000A[20]				db	10 dup (20h)
038F:0868  0009[00]				db	9 dup (0)
038F:0871  0D 2020				or	ax,2020h
038F:0874  20 53 45				and	[bp+di+45h],dl
038F:0877  54					push	sp
038F:0878  20 42 4C				and	[bp+si+4Ch],al
038F:087B  41					inc	cx
038F:087C  53					push	bx
038F:087D  54					push	sp
038F:087E  45					inc	bp
038F:087F  52					push	dx
038F:0880  3D 3041				cmp	ax,3041h
038F:0883  0D A8AD				or	ax,0A8ADh
038F:0886  A5					movsw				; Mov [si] to es:[di]
038F:0887  20 A4 EFAB				and	byte ptr ds:[0EFABh][si],ah	; (038F:EFAB=37h)
038F:088B  20 A1 A7A2				and	byte ptr ds:[0A7A2h][bx+di],ah	; (038F:A7A2=0Fh)
038F:088F  AE					scasb				; Scan es:[di] for al
038F:0890  A2 A3AE				mov	byte ptr ds:[0A3AEh],al	; (038F:A3AE=0F7h)
038F:0893  AE					scasb				; Scan es:[di] for al
038F:0894  20 AF E0AE				and	byte ptr ds:[0E0AEh][bx],ch	; (038F:E0AE=16h)
038F:0898  E2 A0		;*		loop	locloop_41		;*Loop if cx > 0

038F:0898  E2 A0				db	0E2h,0A0h
038F:089A  20 A2 AEA2				and	[bp+si-515Eh],ah
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 16

038F:089E  A4					movsb				; Mov [si] to es:[di]
038F:089F  A0 A22D				mov	al,byte ptr ds:[0A22Dh]	; (038F:A22D=0Bh)
038F:08A2  EB A2		;*		jmp	short loc_42		;*(0846)
038F:08A2  EB A2				db	0EBh,0A2h
038F:08A4  AE					scasb				; Scan es:[di] for al

038F:08A5			locloop_44:
038F:08A5  A4					movsb				; Mov [si] to es:[di]
038F:08A6  A0 5320				mov	al,byte ptr ds:[5320h]	; (038F:5320=6)
038F:08A9  42					inc	dx
038F:08AA  2C 20				sub	al,20h			; ' '
038F:08AC  AD					lodsw				; String [si] to ax
038F:08AD  A0 E0AF				mov	al,byte ptr ds:[0E0AFh]	; (038F:E0AF=11h)
038F:08B0  A8 AC				test	al,0ACh
038F:08B2  A5					movsw				; Mov [si] to es:[di]
038F:08B3  E0 3A				loopnz	locloop_45		; Loop if zf=0, cx>0

038F:08B5  0D 0DEC				or	ax,0DECh
038F:08B8  E0 EB				loopnz	locloop_44		; Loop if zf=0, cx>0

038F:08BA  A5					movsw				; Mov [si] to es:[di]
038F:08BB  0D 0000				or	ax,0
038F:08BE  0032[00]				db	50 dup (0)
038F:08F0  E9 174D				jmp	loc_243			; (2040)
038F:08F3  00 17				add	[bx],dl
038F:08F5  64					db	64h
038F:08F6  FF					db	0FFh
038F:08F7  FF 37				push	word ptr [bx]
038F:08F9  5E					pop	si
038F:08FA  FF					db	0FFh
038F:08FB  FF F5		;*		push	bp
038F:08FB  FF F5				db	0FFh,0F5h
038F:08FD  5C					pop	sp
038F:08FE  FF					db	0FFh
038F:08FF  FF 24				jmp	word ptr [si]		;*
038F:0901  61					db	61h
038F:0902  FF					db	0FFh
038F:0903  FF					db	0FFh
							                        ;* No entry point to code
038F:0904  E9 FF5C		;*		jmp	loc_43			;*(0863)
038F:0904  E9 5C FF				db	0E9h, 5Ch,0FFh
038F:0907  FF 63 5F				jmp	word ptr [bp+di+5Fh]	;*
038F:090A  FF					db	0FFh
038F:090B  FF 01				inc	word ptr [bx+di]
038F:090D  61					db	61h
038F:090E  FF					db	0FFh
038F:090F  FF 6E 5E				jmp	dword ptr [bp+5Eh]	;*
038F:0912  FF					db	0FFh
							                        ;* No entry point to code
038F:0913  FF 5A 64				call	dword ptr [bp+si+64h]	;*
038F:0916  FF					db	0FFh
038F:0917  FF 82 FF5F				inc	word ptr [bp+si-0A1h]
038F:091B  FF D3				call	bx			;*
038F:091D  64					db	64h
038F:091E  FF					db	0FFh
038F:091F  FF AF D900				jmp	dword ptr ds:[0D900h][bx]	;*(038F:D900=16CBh)
							                        ;* No entry point to code
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 17

038F:0923  02 01				add	al,[bx+di]
038F:0925  FB					sti				; Enable interrupts
038F:0926  E8 0064				call	sub_5			; (098D)
038F:0929  1E					push	ds
038F:092A  0E					push	cs
038F:092B  2E: FF 2E 0104			jmp	dword ptr cs:[104h]	; (038F:0104=0F200h)
							                        ;* No entry point to code
038F:0930  FB					sti				; Enable interrupts
038F:0931  E8 0059				call	sub_5			; (098D)
038F:0934  1E					push	ds
038F:0935  0E					push	cs
038F:0936  2E: FF 2E 0108			jmp	dword ptr cs:data_26	; (038F:0108=907Dh)
							                        ;* No entry point to code
038F:093B  FB					sti				; Enable interrupts
038F:093C  E8 004E				call	sub_5			; (098D)
038F:093F  1E					push	ds
038F:0940  0E					push	cs
038F:0941  2E: FF 2E 010C			jmp	dword ptr cs:data_27	; (038F:010C=6B4h)
							                        ;* No entry point to code
038F:0946  FB					sti				; Enable interrupts
038F:0947  E8 0043				call	sub_5			; (098D)
038F:094A  1E					push	ds
038F:094B  0E					push	cs
038F:094C  2E: FF 2E 0110			jmp	dword ptr cs:data_28	; (038F:0110=424Bh)
038F:0951			loc_46:
038F:0951  E8 0039				call	sub_5			; (098D)
038F:0954  1E					push	ds
038F:0955  0E					push	cs
038F:0956  2E: FF 2E 0114			jmp	dword ptr cs:data_30	; (038F:0114=0Ch)
							                        ;* No entry point to code
038F:095B  E8 002F				call	sub_5			; (098D)
038F:095E  1E					push	ds
038F:095F  0E					push	cs
038F:0960  2E: FF 2E 0118			jmp	cs:data_34		; (038F:0118=0)
							                        ;* No entry point to code
038F:0965  E8 0025				call	sub_5			; (098D)
038F:0968  1E					push	ds
038F:0969  0E					push	cs
038F:096A  2E: FF 2E 011C			jmp	dword ptr cs:data_37	; (038F:011C=0C8E8h)
038F:096F			loc_47:
038F:096F  E8 001B				call	sub_5			; (098D)
038F:0972  1E					push	ds
038F:0973  0E					push	cs
038F:0974  2E: FF 2E 0120			jmp	dword ptr cs:data_38	; (038F:0120=0EB01h)
							                        ;* No entry point to code
038F:0979  E8 0011				call	sub_5			; (098D)
038F:097C  1E					push	ds
038F:097D  0E					push	cs
038F:097E  2E: FF 2E 0124			jmp	dword ptr cs:data_40	; (038F:0124=10EBh)
							                        ;* No entry point to code
038F:0983  E8 0007				call	sub_5			; (098D)
038F:0986  1E					push	ds
038F:0987  0E					push	cs
038F:0988  2E: FF 2E 0128			jmp	dword ptr cs:data_44	; (038F:0128=20Ah)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 18

				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_5		proc	near
038F:098D  9C					pushf				; Push flags
038F:098E  50					push	ax
038F:098F  2E: 80 3E 0134 00			cmp	cs:data_48,0		; (038F:0134=0)
038F:0995  74 08				je	loc_48			; Jump if equal
038F:0997  E8 000D				call	sub_6			; (09A7)
038F:099A  73 03				jnc	loc_48			; Jump if carry=0
038F:099C  E8 001B				call	sub_7			; (09BA)
038F:099F			loc_48:
038F:099F  58					pop	ax
038F:09A0  9D					popf				; Pop flags
038F:09A1  C3					retn
				sub_5		endp

038F:09A2  EA 040E:0135		;*		jmp	far ptr loc_471		;*(040E:0135)
038F:09A2  EA					db	0EAh
038F:09A3  0135 040E				dw	135h, 40Eh

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_6		proc	near
038F:09A7  53					push	bx
038F:09A8  50					push	ax
038F:09A9  B4 07				mov	ah,7
038F:09AB  2E: FF 1E 0130			call	cs:data_47		; (038F:0130=0)
038F:09B0  0B C0				or	ax,ax			; Zero ?
038F:09B2  58					pop	ax
038F:09B3  5B					pop	bx
038F:09B4  75 02				jnz	loc_49			; Jump if not zero
038F:09B6  F9					stc				; Set carry flag
038F:09B7  C3					retn
038F:09B8			loc_49:
038F:09B8  F8					clc				; Clear carry flag
038F:09B9  C3					retn
				sub_6		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_7		proc	near
038F:09BA  53					push	bx
038F:09BB  50					push	ax
038F:09BC  B4 05				mov	ah,5
038F:09BE  2E: FF 1E 0130			call	cs:data_47		; (038F:0130=0)
038F:09C3  0B C0				or	ax,ax			; Zero ?
038F:09C5  74 03				jz	loc_50			; Jump if zero
038F:09C7  58					pop	ax
038F:09C8  5B					pop	bx
038F:09C9  C3					retn
038F:09CA			loc_50:
038F:09CA  EB FE				jmp	short loc_50		; (09CA)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 19

				sub_7		endp

							                        ;* No entry point to code
038F:09CC  CD 21				int	21h			; DOS Services  ah=function 0Dh
										;  flush disk buffers to disk
038F:09CE  FA					cli				; Disable interrupts
038F:09CF  0E					push	cs
038F:09D0  17					pop	ss
038F:09D1  BC 0612				mov	sp,612h
038F:09D4  FB					sti				; Enable interrupts
038F:09D5  0E					push	cs
038F:09D6  1F					pop	ds
038F:09D7  9C					pushf				; Push flags
038F:09D8  50					push	ax
038F:09D9  2E: A0 0614				mov	al,cs:data_78		; (038F:0614=0)
038F:09DD  A8 80				test	al,80h
038F:09DF  74 07				jz	loc_51			; Jump if zero
038F:09E1  24 7F				and	al,7Fh
038F:09E3  2E: FF 1E 012C			call	dword ptr cs:data_46	; (038F:012C=0EB00h)
038F:09E8			loc_51:
038F:09E8  2E: 80 26 0614 7F			and	cs:data_78,7Fh		; (038F:0614=0)
038F:09EE  58					pop	ax
038F:09EF  9D					popf				; Pop flags
038F:09F0  E9 FF5E				jmp	loc_46			; (0951)
							                        ;* No entry point to code
038F:09F3  02 00				add	al,[bx+si]
038F:09F5  00 01				add	[bx+di],al
038F:09F7  09 02				or	[bp+si],ax
038F:09F9  41					inc	cx
038F:09FA  02 00				add	al,[bx+si]
038F:09FC  00 02				add	[bp+si],al
038F:09FE  10 02				adc	[bp+si],al
038F:0A00  00 00 00 00 00 00			db	0, 0, 0, 0, 0, 0
038F:0A06  00			data_97		db	0			; Data table (indexed access)
038F:0A07  00 00				add	[bx+si],al
038F:0A09  02 22				add	ah,[bp+si]
038F:0A0B  02 03				add	al,[bp+di]
038F:0A0D  30			data_99		db	30h
038F:0A0E  02 03				add	al,[bp+di]
038F:0A10  2E: 02 00				add	al,cs:[bx+si]
038F:0A13  0010[00]				db	16 dup (0)
038F:0A23  01 09				add	[bx+di],cx
038F:0A25  02 02				add	al,[bp+si]
038F:0A27  5A					pop	dx
038F:0A28  02 01				add	al,[bx+di]
038F:0A2A  3C 02				cmp	al,2
038F:0A2C  43					inc	bx
038F:0A2D  02 7C 04				add	bh,[si+4]
038F:0A30  000B[00]				db	11 dup (0)
038F:0A3B  0E					push	cs
038F:0A3C  04 7F				add	al,7Fh
038F:0A3E  01 0E 0004				add	word ptr data_2+1,cx	; (038F:0004=48h)
038F:0A42  00					db	0
038F:0A43  00					db	0
038F:0A44  00					db	0
038F:0A45  00 00				add	[bx+si],al
038F:0A47  00 43 3A				add	[bp+di+3Ah],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 20

038F:0A4A  5C					pop	sp
038F:0A4B  57					push	di
038F:0A4C  49					dec	cx
038F:0A4D  4E					dec	si
038F:0A4E  44					inc	sp
038F:0A4F  4F					dec	di
038F:0A50  57					push	di
038F:0A51  53					push	bx
038F:0A52  5C					pop	sp
038F:0A53  53					push	bx
038F:0A54  59					pop	cx
038F:0A55  53					push	bx
038F:0A56  54					push	sp
038F:0A57  45					inc	bp
038F:0A58  4D					dec	bp
038F:0A59  33 32				xor	si,[bp+si]
038F:0A5B  5C					pop	sp
038F:0A5C  43					inc	bx
038F:0A5D  4F					dec	di
038F:0A5E  4D					dec	bp
038F:0A5F  4D					dec	bp
038F:0A60  41					inc	cx
038F:0A61  4E					dec	si
038F:0A62  44					inc	sp
038F:0A63  2E					db	2Eh
038F:0A64  43					inc	bx
038F:0A65  4F					dec	di
038F:0A66  4D					dec	bp
038F:0A67  0021[00]				db	33 dup (0)
038F:0A88  77 02				ja	loc_52			; Jump if above
038F:0A8A  2C 01				sub	al,1
038F:0A8C			loc_52:
038F:0A8C  B4 95				mov	ah,95h
038F:0A8E  01 00				add	[bx+si],ax
038F:0A90  00 03				add	[bp+di],al
038F:0A92  FF 9F 1EEE				call	dword ptr data_149[bx]	;*(038F:1EEE=0F601h)
038F:0A96  01 00				add	[bx+si],ax
038F:0A98  03 00				add	ax,[bx+si]
038F:0A9A  01 00				add	[bx+si],ax
038F:0A9C  01 01				add	[bx+di],ax
038F:0A9E  01 00				add	[bx+si],ax
038F:0AA0  01 00				add	[bx+si],ax
038F:0AA2  00 00				add	[bx+si],al
038F:0AA4  FF					db	0FFh
038F:0AA5  FF 00				inc	word ptr [bx+si]
038F:0AA7  000B[00]				db	11 dup (0)
038F:0AB2  04 31				add	al,31h			; '1'
038F:0AB4  0B A7 0000				or	sp,word ptr ds:[0][bx]	; (038F:0000=0)
038F:0AB8  00 00				add	[bx+si],al
038F:0ABA  00 E7				add	bh,ah
038F:0ABC  0C A7				or	al,0A7h
038F:0ABE  0058[00]				db	88 dup (0)
038F:0B16  01 00				add	[bx+si],ax
038F:0B18  00 00				add	[bx+si],al
038F:0B1A  01 00				add	[bx+si],ax
038F:0B1C  0007[00]				db	7 dup (0)
038F:0B23  1E					push	ds
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 21

038F:0B24  06					push	es
038F:0B25  0E					push	cs
038F:0B26  1F					pop	ds
038F:0B27  8B 16 22BD				mov	dx,data_169		; (038F:22BD=1075h)
038F:0B2B  A1 22B1				mov	ax,data_167		; (038F:22B1=7215h)
038F:0B2E  8B 1E 22AD				mov	bx,data_166		; (038F:22AD=4FB4h)
038F:0B32  8B 0E 22B3				mov	cx,data_168		; (038F:22B3=0E903h)
038F:0B36  50					push	ax
038F:0B37  53					push	bx
038F:0B38  51					push	cx
038F:0B39  8C DB				mov	bx,ds
038F:0B3B  8E C3				mov	es,bx
038F:0B3D  8B 1E 0593				mov	bx,data_76		; (038F:0593=0)
038F:0B41  B4 4A				mov	ah,4Ah
038F:0B43  CD 21				int	21h			; DOS Services  ah=function 4Ah
										;  change memory allocation
										;   bx=bytes/16, es=mem segment
038F:0B45  80 3E 02B0 01			cmp	byte ptr ds:[2B0h],1	; (038F:02B0=37h)
038F:0B4A  75 33				jne	loc_53			; Jump if not equal
038F:0B4C  83 3E 0256 00			cmp	word ptr ds:[256h],0	; (038F:0256=0E800h)
038F:0B51  74 2C				je	loc_53			; Jump if equal
038F:0B53  BB 0007				mov	bx,7
038F:0B56  B4 48				mov	ah,48h
038F:0B58  CD 21				int	21h			; DOS Services  ah=function 48h
										;  allocate memory, bx=bytes/16
038F:0B5A  72 23				jc	loc_53			; Jump if carry Set
038F:0B5C  8E C0				mov	es,ax
038F:0B5E  33 FF				xor	di,di			; Zero register
038F:0B60  33 F6				xor	si,si			; Zero register
038F:0B62  1E					push	ds
038F:0B63  8E 1E 0256				mov	ds,word ptr ds:[256h]	; (038F:0256=0E800h)
038F:0B67  B9 0021				mov	cx,21h
038F:0B6A  83 C1 40				add	cx,40h
038F:0B6D  FC					cld				; Clear direction
038F:0B6E  F3/ A4				rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
038F:0B70  1F					pop	ds
038F:0B71  8C C1				mov	cx,es
038F:0B73  8E 06 0256				mov	es,word ptr ds:[256h]	; (038F:0256=0E800h)
038F:0B77  B4 49				mov	ah,49h
038F:0B79  CD 21				int	21h			; DOS Services  ah=function 49h
										;  release memory block, es=seg
038F:0B7B  89 0E 0256				mov	word ptr ds:[256h],cx	; (038F:0256=0E800h)
038F:0B7F			loc_53:
038F:0B7F  59					pop	cx
038F:0B80  5B					pop	bx
038F:0B81  5D					pop	bp
038F:0B82  B4 48				mov	ah,48h
038F:0B84  CD 21				int	21h			; DOS Services  ah=function 48h
										;  allocate memory, bx=bytes/16
038F:0B86  72 41				jc	loc_54			; Jump if carry Set
038F:0B88  A3 0458				mov	word ptr data_72,ax	; (038F:0458=0)
038F:0B8B  A3 002C				mov	word ptr ds:[2Ch],ax	; (038F:002C=0B8E8h)
038F:0B8E  8E C0				mov	es,ax
038F:0B90  80 3E 02B0 01			cmp	byte ptr ds:[2B0h],1	; (038F:02B0=37h)
038F:0B95  75 34				jne	loc_55			; Jump if not equal
038F:0B97  53					push	bx
038F:0B98  BB 0000				mov	bx,0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 22

038F:0B9B  C4					db	0C4h
038F:0B9C  C4 54 0F				les	dx,dword ptr [si+0Fh]	; Load 32 bit ptr
038F:0B9F  8B C3				mov	ax,bx
038F:0BA1  5B					pop	bx
038F:0BA2  3D 0000				cmp	ax,0
038F:0BA5  74 24				je	loc_55			; Jump if equal
038F:0BA7  03 D8				add	bx,ax
038F:0BA9  B4 49				mov	ah,49h
038F:0BAB  CD 21				int	21h			; DOS Services  ah=function 49h
										;  release memory block, es=seg
038F:0BAD  B4 48				mov	ah,48h
038F:0BAF  CD 21				int	21h			; DOS Services  ah=function 48h
										;  allocate memory, bx=bytes/16
038F:0BB1  72 75				jc	loc_58			; Jump if carry Set
038F:0BB3  A3 0458				mov	word ptr data_72,ax	; (038F:0458=0)
038F:0BB6  A3 002C				mov	word ptr ds:[2Ch],ax	; (038F:002C=0B8E8h)
038F:0BB9  8E C0				mov	es,ax
038F:0BBB  89 1E 22AD				mov	data_166,bx		; (038F:22AD=4FB4h)
038F:0BBF  53					push	bx
038F:0BC0  C4					db	0C4h
038F:0BC1  C4 54 0F				les	dx,dword ptr [si+0Fh]	; Load 32 bit ptr
038F:0BC4  58					pop	ax
038F:0BC5  3B D8				cmp	bx,ax
038F:0BC7  76 0D				jbe	loc_56			; Jump if below or =
038F:0BC9			loc_54:
038F:0BC9  EB 5D				jmp	short loc_58		; (0C28)
038F:0BCB			loc_55:
038F:0BCB  1E					push	ds
038F:0BCC  8E DD				mov	ds,bp
038F:0BCE  33 F6				xor	si,si			; Zero register
038F:0BD0  8B FE				mov	di,si
038F:0BD2  FC					cld				; Clear direction
038F:0BD3  F3/ A4				rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
038F:0BD5  1F					pop	ds
038F:0BD6			loc_56:
038F:0BD6  80 3E 228A 00			cmp	byte ptr data_165,0	; (038F:228A=0)
038F:0BDB  75 06				jne	loc_57			; Jump if not equal
038F:0BDD  8E C5				mov	es,bp
038F:0BDF  B4 49				mov	ah,49h
038F:0BE1  CD 21				int	21h			; DOS Services  ah=function 49h
										;  release memory block, es=seg
038F:0BE3			loc_57:
038F:0BE3  C6 06 029E 01			mov	data_57,1		; (038F:029E=0E6h)
038F:0BE8  06					push	es
038F:0BE9  BE 2760				mov	si,2760h
038F:0BEC  BF 0000				mov	di,0
038F:0BEF  B9 A4AD				mov	cx,0A4ADh
038F:0BF2  BB FFFF				mov	bx,0FFFFh
038F:0BF5  B4 48				mov	ah,48h
038F:0BF7  CD 21				int	21h			; DOS Services  ah=function 48h
										;  allocate memory, bx=bytes/16
038F:0BF9  3B DA				cmp	bx,dx
038F:0BFB  72 2B				jb	loc_58			; Jump if below
038F:0BFD  B4 48				mov	ah,48h
038F:0BFF  CD 21				int	21h			; DOS Services  ah=function 48h
										;  allocate memory, bx=bytes/16
038F:0C01  72 25				jc	loc_58			; Jump if carry Set
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 23

038F:0C03  50					push	ax
038F:0C04  C303			data_106	dw	0C303h
038F:0C06  2B C2				sub	ax,dx
038F:0C08  A3 029C				mov	data_56,ax		; (038F:029C=21E6h)
038F:0C0B  8E C0				mov	es,ax
038F:0C0D  58					pop	ax
038F:0C0E  03 F1				add	si,cx
038F:0C10  4E					dec	si
038F:0C11  03 F9				add	di,cx
038F:0C13  4F					dec	di
038F:0C14  FD					std				; Set direction flag
038F:0C15  F3/ A4				rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
038F:0C17  FC					cld				; Clear direction
038F:0C18  8E C0				mov	es,ax
038F:0C1A  B4 49				mov	ah,49h
038F:0C1C  CD 21				int	21h			; DOS Services  ah=function 49h
										;  release memory block, es=seg
038F:0C1E  C6 06 0330 00			mov	data_69,0		; (038F:0330=0)
038F:0C23  07					pop	es
038F:0C24  1F					pop	ds
038F:0C25  E9 FD47				jmp	loc_47			; (096F)
038F:0C28			loc_58:
038F:0C28  E9 1DC0				jmp	loc_399			; (29EB)
038F:0C2B  0019[00]				db	25 dup (0)
038F:0C44  33 03				xor	ax,[bp+di]
038F:0C46  82 03 CC				add	byte ptr [bp+di],0CCh
038F:0C49  04 80				add	al,80h
038F:0C4B  00 0E 5C04				add	byte ptr ds:[5C04h],cl	; (038F:5C04=13h)
038F:0C4F  00 0E 6C04				add	byte ptr ds:[6C04h],cl	; (038F:6C04=26h)
038F:0C53  00 0E 9304				add	byte ptr ds:[9304h],cl	; (038F:9304=58h)
038F:0C57  01 0E 0004				add	word ptr data_2+1,cx	; (038F:0004=48h)
038F:0C5B  10 2F				adc	[bx],ch
038F:0C5D  5C					pop	sp
038F:0C5E  DC					db	0DCh
038F:0C5F  01 0E 6B04				add	word ptr ds:[6B04h],cx	; (038F:6B04=0A75h)
038F:0C63  01 0E 0004				add	word ptr data_2+1,cx	; (038F:0004=48h)
038F:0C67  00 C7				add	bh,al
038F:0C69  06					push	es
038F:0C6A  00 00				add	[bx+si],al
038F:0C6C  5C					pop	sp
038F:0C6D  5C					pop	sp
038F:0C6E  56					push	si
038F:0C6F  4D					dec	bp
038F:0C70  57					push	di
038F:0C71  41					inc	cx
038F:0C72  52					push	dx
038F:0C73  45					inc	bp
038F:0C74  2D 4F48				sub	ax,4F48h
038F:0C77  53					push	bx
038F:0C78  54					push	sp
038F:0C79  5C					pop	sp
038F:0C7A  53					push	bx
038F:0C7B  48					dec	ax
038F:0C7C  41					inc	cx
038F:0C7D  52					push	dx
038F:0C7E  45					inc	bp
038F:0C7F  44					inc	sp
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 24

038F:0C80  20 46 4F				and	[bp+4Fh],al
038F:0C83  4C					dec	sp
038F:0C84  44					inc	sp
038F:0C85  45					inc	bp
038F:0C86  52					push	dx
038F:0C87  53					push	bx
038F:0C88  5C					pop	sp
038F:0C89  90					nop
038F:0C8A  80 81 7E8E 31			add	byte ptr ds:[7E8Eh][bx+di],31h	; (038F:7E8E=6) '1'
038F:0C8F  31 36 4F5C				xor	word ptr ds:[4F5Ch],si	; (038F:4F5C=775h)
038F:0C93  53					push	bx
038F:0C94  5C					pop	sp
038F:0C95  8B 80 5F81				mov	ax,word ptr ds:[5F81h][bx+si]	; (038F:5F81=0BF0Fh)
038F:0C99  7E 45				jle	loc_59			; Jump if < or =
038F:0C9B  38 41 5C				cmp	[bx+di+5Ch],al
038F:0C9E  53					push	bx
038F:0C9F  52					push	dx
038F:0CA0  2E					db	2Eh
038F:0CA1  45					inc	bp
038F:0CA2  58					pop	ax
038F:0CA3  45					inc	bp
038F:0CA4  00 00 00 00				db	0, 0, 0, 0
038F:0CA8  00			data_109	db	0
038F:0CA9  00					db	0
038F:0CAA  00					db	0
038F:0CAB  00					db	0
038F:0CAC  00					db	0
038F:0CAD  00					db	0
038F:0CAE  00					db	0
038F:0CAF  00					db	0
038F:0CB0  00					db	0
038F:0CB1  00					db	0
038F:0CB2  00					db	0
038F:0CB3  00					db	0
038F:0CB4  00					db	0
038F:0CB5  00					db	0
038F:0CB6  00					db	0
038F:0CB7  00					db	0
038F:0CB8  00					db	0
038F:0CB9  00					db	0
038F:0CBA  00					db	0
038F:0CBB  00					db	0
038F:0CBC  00					db	0
038F:0CBD  00					db	0
038F:0CBE  00					db	0
038F:0CBF  00					db	0
038F:0CC0  00					db	0
038F:0CC1  00					db	0
038F:0CC2  00					db	0
038F:0CC3  00					db	0
038F:0CC4  00					db	0
038F:0CC5  00					db	0
038F:0CC6  00					db	0
038F:0CC7  00					db	0
038F:0CC8  00					db	0
038F:0CC9  00					db	0
038F:0CCA  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 25

038F:0CCB  00					db	0
038F:0CCC  00					db	0
038F:0CCD  00					db	0
038F:0CCE  00					db	0
038F:0CCF  00					db	0
038F:0CD0  00					db	0
038F:0CD1  00					db	0
038F:0CD2  00					db	0
038F:0CD3  00					db	0
038F:0CD4  00					db	0
038F:0CD5  00					db	0
038F:0CD6  00					db	0
038F:0CD7  00					db	0
038F:0CD8  00					db	0
038F:0CD9  00					db	0
038F:0CDA  00					db	0
038F:0CDB  00					db	0
038F:0CDC  00					db	0
038F:0CDD  00					db	0
038F:0CDE  00					db	0
038F:0CDF  00					db	0
038F:0CE0			loc_59:
038F:0CE0  00					db	0
038F:0CE1  00					db	0
038F:0CE2  00					db	0
038F:0CE3  00					db	0
038F:0CE4  00					db	0
038F:0CE5  00					db	0
038F:0CE6  00					db	0
038F:0CE7  00					db	0
038F:0CE8  00					db	0
038F:0CE9  00					db	0
038F:0CEA  00					db	0
038F:0CEB  00					db	0
038F:0CEC  00					db	0
038F:0CED  00					db	0
038F:0CEE  00					db	0
038F:0CEF  00					db	0
038F:0CF0  00					db	0
038F:0CF1  00					db	0
038F:0CF2  00					db	0
038F:0CF3  00					db	0
038F:0CF4  00					db	0
038F:0CF5  00					db	0
038F:0CF6  00					db	0
038F:0CF7  00					db	0
038F:0CF8  00					db	0
038F:0CF9  00					db	0
038F:0CFA  00					db	0
038F:0CFB  00					db	0
038F:0CFC  00					db	0
038F:0CFD  00					db	0
038F:0CFE  00					db	0
038F:0CFF  00					db	0
038F:0D00  00					db	0
038F:0D01  00					db	0
038F:0D02  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 26

038F:0D03  00					db	0
038F:0D04  00					db	0
038F:0D05  00					db	0
038F:0D06  00					db	0
038F:0D07  00					db	0
038F:0D08  00					db	0
038F:0D09  00					db	0
038F:0D0A  00					db	0
038F:0D0B  00					db	0
038F:0D0C  00					db	0
038F:0D0D  00					db	0
038F:0D0E  00					db	0
038F:0D0F  00					db	0
038F:0D10  00					db	0
038F:0D11  00					db	0
038F:0D12  00					db	0
038F:0D13  00					db	0
038F:0D14  00					db	0
038F:0D15  00					db	0
038F:0D16  00					db	0
038F:0D17  00					db	0
038F:0D18  00					db	0
038F:0D19  00					db	0
038F:0D1A  00					db	0
038F:0D1B  00					db	0
038F:0D1C  00					db	0
038F:0D1D  00					db	0
038F:0D1E  00					db	0
038F:0D1F  00					db	0
038F:0D20  00					db	0
038F:0D21  00					db	0
038F:0D22  00					db	0
038F:0D23  00					db	0
038F:0D24  00					db	0
038F:0D25  00					db	0
038F:0D26  00					db	0
038F:0D27  00					db	0
038F:0D28  00					db	0
038F:0D29  00					db	0
038F:0D2A  00					db	0
038F:0D2B  00					db	0
038F:0D2C  00					db	0
038F:0D2D  00					db	0
038F:0D2E  00					db	0
038F:0D2F  00					db	0
038F:0D30  00					db	0
038F:0D31  00					db	0
038F:0D32  00					db	0
038F:0D33  00					db	0
038F:0D34  00					db	0
038F:0D35  00					db	0
038F:0D36  00					db	0
038F:0D37  00					db	0
038F:0D38  00					db	0
038F:0D39  00					db	0
038F:0D3A  00					db	0
038F:0D3B  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 27

038F:0D3C  00					db	0
038F:0D3D  00					db	0
038F:0D3E  00					db	0
038F:0D3F  00					db	0
038F:0D40  00					db	0
038F:0D41  00					db	0
038F:0D42  00					db	0
038F:0D43  00					db	0
038F:0D44  00					db	0
038F:0D45  00					db	0
038F:0D46  00					db	0
038F:0D47  00					db	0
038F:0D48  00					db	0
038F:0D49  00					db	0
038F:0D4A  00					db	0
038F:0D4B  00					db	0
038F:0D4C  00					db	0
038F:0D4D  00					db	0
038F:0D4E  00					db	0
038F:0D4F  00					db	0
038F:0D50  00					db	0
038F:0D51  00					db	0
038F:0D52  00					db	0
038F:0D53  00					db	0
038F:0D54  00					db	0
038F:0D55  00					db	0
038F:0D56  00					db	0
038F:0D57  00					db	0
038F:0D58  00					db	0
038F:0D59  00					db	0
038F:0D5A  00					db	0
038F:0D5B  00					db	0
038F:0D5C  00					db	0
038F:0D5D  00					db	0
038F:0D5E  00					db	0
038F:0D5F  00					db	0
038F:0D60  00					db	0
038F:0D61  00					db	0
038F:0D62  00					db	0
038F:0D63  00					db	0
038F:0D64  00					db	0
038F:0D65  00					db	0
038F:0D66  00					db	0
038F:0D67  00					db	0
038F:0D68  00					db	0
038F:0D69  00					db	0
038F:0D6A  00					db	0
038F:0D6B  00					db	0
038F:0D6C  00					db	0
038F:0D6D  00					db	0
038F:0D6E  00					db	0
038F:0D6F  00					db	0
038F:0D70  00					db	0
038F:0D71  00					db	0
038F:0D72  00					db	0
038F:0D73  00					db	0
038F:0D74  00					db	0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 28

038F:0D75  00					db	0
038F:0D76  00					db	0
038F:0D77  00					db	0
038F:0D78  00					db	0
038F:0D79  00					db	0
038F:0D7A  00 00				add	[bx+si],al
038F:0D7C  00 66 00				add	[bp],ah
038F:0D7F  D9					db	0D9h
038F:0D80  02 46 0B				add	al,[bp+0Bh]
038F:0D83  B5 00				mov	ch,0
038F:0D85  0042[00]				db	66 dup (0)
038F:0DC7  63					db	63h
038F:0DC8  0D 0094				or	ax,94h
038F:0DCB  00 00				add	[bx+si],al
038F:0DCD  00 E7				add	bh,ah
038F:0DCF  0C C5				or	al,0C5h
038F:0DD1  22 0C				and	cl,[si]
038F:0DD3  94					xchg	sp,ax
038F:0DD4  EA 1022:EA22		;*		jmp	far ptr loc_472		;*(1022:EA22)
038F:0DD4  EA					db	0EAh
038F:0DD5  EA22 1022				dw	0EA22h, 1022h
							                        ;* No entry point to code
038F:0DD9  07					pop	es
038F:0DDA  00 07				add	[bx],al
038F:0DDC  D9					db	0D9h
038F:0DDD  02 01				add	al,[bx+di]
038F:0DDF  00 D9				add	cl,bl
038F:0DE1  02 47 01				add	al,[bx+1]
038F:0DE4  D9					db	0D9h

038F:0DE5			locloop_61:
038F:0DE5  02 24				add	ah,[si]
038F:0DE7  25 95B4				and	ax,95B4h
038F:0DEA  00 3E 98FE				add	byte ptr ds:[98FEh],bh	; (038F:98FE=8Bh)
038F:0DEE  0E					push	cs
038F:0DEF  04 00				add	al,0
038F:0DF1  00 00				add	[bx+si],al
038F:0DF3  01 00				add	[bx+si],ax
038F:0DF5  01 81 0E00				add	data_112[bx+di],ax	; (038F:0E00=3246h)
038F:0DF9  04 0E				add	al,0Eh
038F:0DFB  04 DE				add	al,0DEh
038F:0DFD  01 0E 4604				add	word ptr ds:[4604h],cx	; (038F:4604=0ED33h)
038F:0E01  32					db	32h			; Data table (indexed access)
038F:0E02  0000			data_114	dw	0
038F:0E04  4100			data_115	dw	4100h
038F:0E06  52					push	dx
038F:0E07  49					dec	cx
038F:0E08  46					inc	si
038F:0E09  59					pop	cx
038F:0E0A  4E					dec	si
038F:0E0B  0C 41				or	al,41h			; 'A'
038F:0E0D  62					db	62h
038F:0E0E  6F					db	6Fh
038F:0E0F  72 74				jc	loc_73			; Jump if carry Set
038F:0E11  20 28				and	[bx+si],ch
038F:0E13  E1 E2		;*		loopz	locloop_63		;*Loop if zf=1, cx>0

           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 29

038F:0E13  E1 E2				db	0E1h,0E2h
038F:0E15  AE					scasb				; Scan es:[di] for al
038F:0E16  AF					scasw				; Scan es:[di] for ax
038F:0E17  29 10				sub	[bx+si],dx
038F:0E19  2C 20				sub	al,20h			; ' '
038F:0E1B			loc_64:
038F:0E1B  52					push	dx
038F:0E1C  65					db	65h
038F:0E1D  74 72				jz	loc_74			; Jump if zero
038F:0E1F  79 20				jns	loc_67			; Jump if not sign
038F:0E21  28 AF A2AE				sub	byte ptr ds:[0A2AEh][bx],ch	; (038F:A2AE=0CCh)
038F:0E25  E2 AE		;*		loop	locloop_60		;*Loop if cx > 0

038F:0E25  E2 AE				db	0E2h,0AEh
038F:0E27  E0 29				loopnz	locloop_69		; Loop if zf=0, cx>0

038F:0E29  12 2C				adc	ch,[si]
038F:0E2B  20 49 67				and	[bx+di+67h],cl
038F:0E2E  6E					db	6Eh
038F:0E2F  6F					db	6Fh
038F:0E30  72 65				jc	loc_76			; Jump if carry Set
038F:0E32  20 28				and	[bx+si],ch
038F:0E34  AF					scasw				; Scan es:[di] for ax
038F:0E35  E0 AE				loopnz	locloop_61		; Loop if zf=0, cx>0

038F:0E37  AF					scasw				; Scan es:[di] for ax
038F:0E38  E3 E1				jcxz	loc_64			; Jump if cx=0
038F:0E3A  AA					stosb				; Store al to es:[di]
038F:0E3B  29 0E 202C				sub	data_150,cx		; (038F:202C=63Ah)
038F:0E3F  46					inc	si
038F:0E40  61					db	61h
038F:0E41			loc_67:
038F:0E41  69					db	69h
038F:0E42  6C					db	6Ch
038F:0E43  20 28				and	[bx+si],ch
038F:0E45  E1 A1		;*		loopz	locloop_62		;*Loop if zf=1, cx>0

038F:0E45  E1 A1				db	0E1h,0A1h
038F:0E47  E0 AE		;*		loopnz	locloop_63		;*Loop if zf=0, cx>0

038F:0E47  E0 AE				db	0E0h,0AEh
038F:0E49  E1 29				loopz	locloop_72		; Loop if zf=1, cx>0

038F:0E4B  01 3F				add	[bx],di
038F:0E4D  07					pop	es
038F:0E4E  E7 E2				out	0E2h,ax			; port 0E2h ??I/O Non-standard
038F:0E50  A5					movsw				; Mov [si] to es:[di]
038F:0E51  AD					lodsw				; String [si] to ax

038F:0E52			locloop_69:
038F:0E52  A8 A5				test	al,0A5h

038F:0E54			locloop_71:
038F:0E54  00 07				add	[bx],al
038F:0E56  A7					cmpsw				; Cmp [si] to es:[di]
038F:0E57  A0 A8AF				mov	al,byte ptr ds:[0A8AFh]	; (038F:A8AF=74h)
038F:0E5A  E1 EC		;*		loopz	locloop_68		;*Loop if zf=1, cx>0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 30


038F:0E5A  E1 EC				db	0E1h,0ECh
038F:0E5C  00 0D				add	[di],cl
038F:0E5E  20 25				and	[di],ah
038F:0E60  31 20				xor	[bx+si],sp
038F:0E62  A4					movsb				; Mov [si] to es:[di]
038F:0E63  A8 E1				test	al,0E1h
038F:0E65  AA					stosb				; Store al to es:[di]
038F:0E66  20 25				and	[di],ah
038F:0E68  32 0D				xor	cl,[di]
038F:0E6A  0A 13				or	dl,[bp+di]
038F:0E6C  20 25				and	[di],ah
038F:0E6E  31 20				xor	[bx+si],sp
038F:0E70  E3 E1		;*		jcxz	loc_70			;*Jump if cx=0
038F:0E70  E3 E1				db	0E3h,0E1h
038F:0E72  E2 E0				loop	locloop_71		; Loop if cx > 0


038F:0E74			locloop_72:
038F:0E74  AE					scasb				; Scan es:[di] for al
038F:0E75  A9 E2E1				test	ax,0E2E1h
038F:0E78  A2 20AE				mov	byte ptr data_155,al	; (038F:20AE=0)
038F:0E7B  25 0D32				and	ax,0D32h
038F:0E7E  0A 27				or	ah,[bx]
038F:0E80  82 E1 E2				and	cl,0E2h
038F:0E83  A0 ECA2				mov	al,byte ptr ds:[0ECA2h]	; (038F:ECA2=3Ah)
038F:0E86  E2 A5		;*		loop	locloop_65		;*Loop if cx > 0

038F:0E86  E2 A5				db	0E2h,0A5h
038F:0E88  20 E2				and	dl,ah
038F:0E8A  AE					scasb				; Scan es:[di] for al
038F:0E8B  AC					lodsb				; String [si] to al
038F:0E8C  20 25				and	[di],ah
038F:0E8E  31 2C				xor	[si],bp
038F:0E90  20 E1				and	cl,ah
038F:0E92  A5					movsw				; Mov [si] to es:[di]
038F:0E93  E0 A8		;*		loopnz	locloop_66		;*Loop if zf=0, cx>0

038F:0E93  E0 A8				db	0E0h,0A8h

038F:0E95			locloop_75:
038F:0E95  A9 EBAD				test	ax,0EBADh
038F:0E98  A9 AD20				test	ax,0AD20h
038F:0E9B  AE					scasb				; Scan es:[di] for al
038F:0E9C  AC					lodsb				; String [si] to al
038F:0E9D  A5					movsw				; Mov [si] to es:[di]
038F:0E9E  E0 20				loopnz	locloop_78		; Loop if zf=0, cx>0

038F:0EA0  25 2D32				and	ax,2D32h
038F:0EA3  25 0D33				and	ax,0D33h
038F:0EA6  0A 37				or	dh,[bx]

038F:0EA8			locloop_77:
038F:0EA8  88 E1				mov	cl,ah
038F:0EAA  AF					scasw				; Scan es:[di] for ax
038F:0EAB  AE					scasb				; Scan es:[di] for al
038F:0EAC  E0 E7				loopnz	locloop_75		; Loop if zf=0, cx>0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 31


038F:0EAE  A5			data_116	db	0A5h
038F:0EAF  AD					lodsw				; String [si] to ax
038F:0EB0  A0 E220				mov	al,byte ptr ds:[0E220h]	; (038F:E220=32h)
038F:0EB3  A0 ABA1				mov	al,byte ptr ds:[0ABA1h]	; (038F:ABA1=8Eh)
038F:0EB6  A8 E6				test	al,0E6h
038F:0EB8  A0 E020				mov	al,byte ptr ds:[0E020h]	; (038F:E020=0C6h)
038F:0EBB  A0 ACA7				mov	al,byte ptr ds:[0ACA7h]	; (038F:ACA7=0F9h)
038F:0EBE  A5					movsw				; Mov [si] to es:[di]
038F:0EBF  E9 ADA5				jmp	$-5258h
							                        ;* No entry point to code
038F:0EC2  A8 EF				test	al,0EFh
038F:0EC4  20 E4				and	ah,ah
038F:0EC6  A0 ABA9				mov	al,byte ptr ds:[0ABA9h]	; (038F:ABA9=3Ch)
038F:0EC9  A2AE 2820		data_117	dw	0A2AEh, 2820h
038F:0ECD  46					inc	si
038F:0ECE  41					inc	cx
038F:0ECF  54					push	sp
038F:0ED0  29 20				sub	[bx+si],sp
038F:0ED2  AD					lodsw				; String [si] to ax
038F:0ED3  20A0			data_119	dw	20A0h
038F:0ED5  A4			data_120	db	0A4h
038F:0ED6  A8 E1				test	al,0E1h
038F:0ED8  AA					stosb				; Store al to es:[di]
038F:0ED9  A5					movsw				; Mov [si] to es:[di]
038F:0EDA  20 25				and	[di],ah
038F:0EDC  31 0D				xor	[di],cx
038F:0EDE  0A 1A				or	bl,[bp+si]
038F:0EE0  8D A5 E0AF				lea	sp,cs:[0E0AFh][di]	; Load effective addr
038F:0EE4  A0 A8A2				mov	al,byte ptr ds:[0A8A2h]	; (038F:A8A2=2Eh)
038F:0EE7  ECAB			data_124	dw	0ECABh
038F:0EE9  EBAD			data_125	dw	0EBADh

038F:0EEB			locloop_81:
038F:0EEB  20A9			data_126	dw	20A9h
038F:0EED  43					inc	bx
038F:0EEE  4F			data_127	db	4Fh
038F:0EEF  4D 4D 41 4E 44 2E	data_128	db	'MMAND.COM', 0Dh, 0Ah, '"'
038F:0EF5  43 4F 4D 0D 0A 22
038F:0EFB  82 E1 E2				and	cl,0E2h
038F:0EFE  A0 ECA2				mov	al,byte ptr ds:[0ECA2h]	; (038F:ECA2=3Ah)
038F:0F01  E2 A5				loop	locloop_77		; Loop if cx > 0

038F:0F03  20 A4 E1A8				and	byte ptr ds:[0E1A8h][si],ah	; (038F:E1A8=74h)
038F:0F07  AA					stosb				; Store al to es:[di]
038F:0F08  20 E1				and	cl,ah
038F:0F0A  20 25				and	[di],ah
038F:0F0C  31 20				xor	[bx+si],sp
038F:0F0E  A2 A420				mov	byte ptr ds:[0A420h],al	; (038F:A420=0FFh)
038F:0F11  A8 E1				test	al,0E1h
038F:0F13  AA					stosb				; Store al to es:[di]
038F:0F14  AE					scasb				; Scan es:[di] for al
038F:0F15  A2 A4AE				mov	byte ptr ds:[0A4AEh],al	; (038F:A4AE=1Eh)
038F:0F18  20 25				and	[di],ah
038F:0F1A  32 0D				xor	cl,[di]
038F:0F1C			loc_84:
038F:0F1C  0A 1A				or	bl,[bp+si]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 32

038F:0F1E  8D A0 ACA6				lea	sp,cs:[0ACA6h][bx+si]	; Load effective addr
038F:0F22  A8 E2				test	al,0E2h
038F:0F24  A5					movsw				; Mov [si] to es:[di]
038F:0F25  20 AB A1EE				and	[bp+di-5E12h],ch
038F:0F29  E3 EE		;*		jcxz	loc_83			;*Jump if cx=0
038F:0F29  E3 EE				db	0E3h,0EEh
038F:0F2B  20 AA A0AB				and	[bp+si-5F55h],ch
038F:0F2F  A2 E8A8				mov	byte ptr ds:[0E8A8h],al	; (038F:E8A8=24h)
038F:0F32  E3 2E				jcxz	loc_87			; Jump if cx=0
038F:0F34  2E					db	2Eh
038F:0F35  2E					db	2Eh
038F:0F36  0D 390A				or	ax,390Ah
038F:0F39  0D 8F0A				or	ax,8F0Ah
038F:0F3C  E0 A5		;*		loopnz	locloop_80		;*Loop if zf=0, cx>0

038F:0F3C  E0 A5				db	0E0h,0A5h
038F:0F3E  AA					stosb				; Store al to es:[di]
038F:0F3F  E0 A0		;*		loopnz	locloop_79		;*Loop if zf=0, cx>0

038F:0F3F  E0 A0				db	0E0h,0A0h
038F:0F41  E2 A8				loop	locloop_81		; Loop if cx > 0

038F:0F43  E2 EC		;*		loop	locloop_85		;*Loop if cx > 0

038F:0F43  E2 EC				db	0E2h,0ECh
038F:0F45  20 A2 AFEB				and	[bp+si-5015h],ah
038F:0F49  AE					scasb				; Scan es:[di] for al
038F:0F4A  AB					stosw				; Store ax to es:[di]
038F:0F4B  AD					lodsw				; String [si] to ax
038F:0F4C  A5					movsw				; Mov [si] to es:[di]
038F:0F4D  AD					lodsw				; String [si] to ax
038F:0F4E  A8 A5				test	al,0A5h
038F:0F50  20 AF AAA0				and	byte ptr ds:[0AAA0h][bx],ch	; (038F:AAA0=8)
038F:0F54  A5					movsw				; Mov [si] to es:[di]
038F:0F55  E2 AD		;*		loop	locloop_82		;*Loop if cx > 0

038F:0F55  E2 AD				db	0E2h,0ADh
038F:0F57  AE					scasb				; Scan es:[di] for al
038F:0F58  A3 20AE				mov	data_155,ax		; (038F:20AE=0)
038F:0F5B  A7					cmpsw				; Cmp [si] to es:[di]
038F:0F5C  A0 A0A4				mov	al,byte ptr ds:[0A0A4h]	; (038F:A0A4=30h)
038F:0F5F  AD					lodsw				; String [si] to ax
038F:0F60  A8 EF				test	al,0EFh
038F:0F62			loc_87:
038F:0F62  20 5B 59				and	[bp+di+59h],bl
038F:0F65  28 A4 29A0				sub	data_174[si],ah		; (038F:29A0=0CFh)

038F:0F69			locloop_88:
038F:0F69  2F					das				; Decimal adjust
038F:0F6A  4E					dec	si
038F:0F6B  28 AD E2A5				sub	byte ptr ds:[0E2A5h][di],ch	; (038F:E2A5=46h)
038F:0F6F  29 5D 3F				sub	[di+3Fh],bx
038F:0F72  19 8D 20A5				sbb	data_152[di],cx		; (038F:20A5=0)
038F:0F76  E3 A4				jcxz	loc_84			; Jump if cx=0
038F:0F78  A0 E2A5				mov	al,byte ptr ds:[0E2A5h]	; (038F:E2A5=46h)
038F:0F7B  E1 EF		;*		loopz	locloop_89		;*Loop if zf=1, cx>0

           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 33

038F:0F7B  E1 EF				db	0E1h,0EFh
038F:0F7D  20 A2 AFEB				and	[bp+si-5015h],ah
038F:0F81  AE					scasb				; Scan es:[di] for al

038F:0F82			locloop_91:
038F:0F82  AB					stosw				; Store ax to es:[di]
038F:0F83  AD					lodsw				; String [si] to ax
038F:0F84  A8 E2				test	al,0E2h
038F:0F86  EC					in	al,dx			; port 4000h ??I/O Non-standard
038F:0F87  20 25				and	[di],ah
038F:0F89  31 0D				xor	[di],cx

038F:0F8B			locloop_92:
038F:0F8B  0A 14				or	dl,[si]

038F:0F8D			locloop_93:
038F:0F8D  8E					db	8Eh
038F:0F8E  E8 A1A8				call	$-5E55h
038F:0F91  AA					stosb				; Store al to es:[di]
038F:0F92  A0 A220				mov	al,byte ptr ds:[0A220h]	; (038F:A220=0D2h)
038F:0F95  20 45 58				and	[di+58h],al

038F:0F98			locloop_94:
038F:0F98  45					inc	bp
038F:0F99  2D A0E4				sub	ax,0A0E4h
038F:0F9C  A9 A5AB				test	ax,0A5ABh
038F:0F9F  0D 210A				or	ax,210Ah
038F:0FA2  8F					db	8Fh
038F:0FA3  E0 AE		;*		loopnz	locloop_86		;*Loop if zf=0, cx>0

038F:0FA3  E0 AE				db	0E0h,0AEh
038F:0FA5  A3 A0E0				mov	word ptr ds:[0A0E0h],ax	; (038F:A0E0=0C730h)
038F:0FA8  AC					lodsb				; String [si] to al
038F:0FA9  AC					lodsb				; String [si] to al
038F:0FAA  A0 AD20				mov	al,byte ptr ds:[0AD20h]	; (038F:AD20=0Ah)
038F:0FAD  A5					movsw				; Mov [si] to es:[di]
038F:0FAE  20 E3				and	bl,ah
038F:0FB0  AC					lodsb				; String [si] to al
038F:0FB1  A5					movsw				; Mov [si] to es:[di]
038F:0FB2  E9 A5A0				jmp	$-5A5Dh
038F:0FB5  E2 E1				loop	locloop_94		; Loop if cx > 0

038F:0FB7  EF					out	dx,ax			; port 4005h ??I/O Non-standard
038F:0FB8			loc_95:
038F:0FB8  20 A2 AF20				and	[bp+si-50E0h],ah
038F:0FBC  A0 EFAC				mov	al,byte ptr ds:[0EFACh]	; (038F:EFAC=2Bh)
038F:0FBF  E2 A8				loop	locloop_88		; Loop if cx > 0

038F:0FC1  0D 230A				or	ax,230Ah
038F:0FC4  0D 8D0A				or	ax,8D0Ah
038F:0FC7  A5					movsw				; Mov [si] to es:[di]
038F:0FC8  E2 20				loop	locloop_100		; Loop if cx > 0

038F:0FCA  E1 A2		;*		loopz	locloop_90		;*Loop if zf=1, cx>0

038F:0FCA  E1 A2				db	0E1h,0A2h
038F:0FCC  AE					scasb				; Scan es:[di] for al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 34

038F:0FCD  A1 A4AE				mov	ax,word ptr ds:[0A4AEh]	; (038F:A4AE=31Eh)
038F:0FD0  AD					lodsw				; String [si] to ax
038F:0FD1  EB E5				jmp	short loc_95		; (0FB8)
							                        ;* No entry point to code
038F:0FD3  20 A4 E1A5				and	byte ptr ds:[0E1A5h][si],ah	; (038F:E1A5=3Fh)
038F:0FD7  AA					stosb				; Store al to es:[di]
038F:0FD8  E0 A8				loopnz	locloop_91		; Loop if zf=0, cx>0

038F:0FDA  AF					scasw				; Scan es:[di] for ax
038F:0FDB  E2 AE				loop	locloop_92		; Loop if cx > 0

038F:0FDD  E0 AE				loopnz	locloop_93		; Loop if zf=0, cx>0


038F:0FDF			locloop_98:
038F:0FDF  A2 E420				mov	byte ptr ds:[0E420h],al	; (038F:E420=6)
038F:0FE2  A0 ABA9				mov	al,byte ptr ds:[0ABA9h]	; (038F:ABA9=3Ch)
038F:0FE5  AE					scasb				; Scan es:[di] for al
038F:0FE6  A2 AD24				mov	byte ptr ds:[0AD24h],al	; (038F:AD24=1Fh)
038F:0FE9  A5					movsw				; Mov [si] to es:[di]

038F:0FEA			locloop_100:
038F:0FEA  AF					scasw				; Scan es:[di] for ax
038F:0FEB  E0 A0				loopnz	locloop_93		; Loop if zf=0, cx>0

038F:0FED  A2 ABA8				mov	byte ptr ds:[0ABA8h],al	; (038F:ABA8=5Bh)
038F:0FF0  EC					in	al,dx			; port 4005h ??I/O Non-standard
038F:0FF1  AD					lodsw				; String [si] to ax
038F:0FF2  A0 20EF				mov	al,data_156		; (038F:20EF=0FFh)
038F:0FF5  AA					stosb				; Store al to es:[di]
038F:0FF6  AE					scasb				; Scan es:[di] for al

038F:0FF7			locloop_101:
038F:0FF7  AC					lodsb				; String [si] to al
038F:0FF8  A0 A4AD				mov	al,byte ptr ds:[0A4ADh]	; (038F:A4AD=0Bh)
038F:0FFB  A0 A820				mov	al,byte ptr ds:[0A820h]	; (038F:A820=73h)
038F:0FFE  AB					stosw				; Store ax to es:[di]
038F:0FFF  A8 20				test	al,20h			; ' '
038F:1001  A8 AC				test	al,0ACh
038F:1003  EF					out	dx,ax			; port 4005h ??I/O Non-standard
038F:1004  20 E4				and	ah,ah

038F:1006			locloop_102:
038F:1006  A0 ABA9				mov	al,byte ptr ds:[0ABA9h]	; (038F:ABA9=3Ch)
038F:1009  A0 0A0D				mov	al,data_99		; (038F:0A0D=30h)
038F:100C  0C 8D				or	al,8Dh
038F:100E  A5					movsw				; Mov [si] to es:[di]
038F:100F  E2 20				loop	locloop_105		; Loop if cx > 0

038F:1011  A4					movsb				; Mov [si] to es:[di]
038F:1012  AE					scasb				; Scan es:[di] for al
038F:1013  E1 E2				loopz	locloop_101		; Loop if zf=1, cx>0

038F:1015  E3 AF		;*		jcxz	loc_96			;*Jump if cx=0
038F:1015  E3 AF				db	0E3h,0AFh
038F:1017  A0 1D20				mov	al,data_148		; (038F:1D20=0)
038F:101A  0D 8E0A				or	ax,8E0Ah
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 35

038F:101D  E8 A1A8				call	$-5E55h
038F:1020  AA					stosb				; Store al to es:[di]
038F:1021  A0 AF20				mov	al,byte ptr ds:[0AF20h]	; (038F:AF20=0C5h)
038F:1024  E0 A8		;*		loopnz	locloop_97		;*Loop if zf=0, cx>0

038F:1024  E0 A8				db	0E0h,0A8h
038F:1026  20 A2 A4EB				and	[bp+si-5B15h],ah
038F:102A  A5					movsw				; Mov [si] to es:[di]
038F:102B  AB					stosw				; Store ax to es:[di]
038F:102C  A5					movsw				; Mov [si] to es:[di]

038F:102D			locloop_103:
038F:102D  AD					lodsw				; String [si] to ax

038F:102E			locloop_104:
038F:102E  A8 A8				test	al,0A8h
038F:1030  20 AF ACA0				and	byte ptr ds:[0ACA0h][bx],ch	; (038F:ACA0=0C2h)
038F:1034  EF					out	dx,ax			; port 4005h ??I/O Non-standard
038F:1035  E2 A8				loop	locloop_98		; Loop if cx > 0

038F:1037  39 0D				cmp	[di],cx
038F:1039  0A 8D 20A5				or	cl,byte ptr data_152[di]	; (038F:20A5=0)
038F:103D  E3 A4		;*		jcxz	loc_99			;*Jump if cx=0
038F:103D  E3 A4				db	0E3h,0A4h
038F:103F  A0 E2A5				mov	al,byte ptr ds:[0E2A5h]	; (038F:E2A5=46h)

038F:1042			locloop_107:
038F:1042  E1 EF		;*		loopz	locloop_106		;*Loop if zf=1, cx>0

038F:1042  E1 EF				db	0E1h,0EFh
038F:1044  20 A7 A3A0				and	byte ptr ds:[0A3A0h][bx],ah	; (038F:A3A0=0E8h)
038F:1048  E0 E3				loopnz	locloop_103		; Loop if zf=0, cx>0

038F:104A  A7					cmpsw				; Cmp [si] to es:[di]
038F:104B  A8 E2				test	al,0E2h
038F:104D  EC					in	al,dx			; port 4005h ??I/O Non-standard
038F:104E  20 43 4F				and	[bp+di+4Fh],al
038F:1051  4D					dec	bp
038F:1052  4D					dec	bp

038F:1053			locloop_109:
038F:1053  41					inc	cx

038F:1054			locloop_110:
038F:1054  4E					dec	si
038F:1055  44					inc	sp
038F:1056  2E					db	2Eh
038F:1057  43					inc	bx
038F:1058  4F					dec	di
038F:1059  4D					dec	bp
038F:105A  2C 20				sub	al,20h			; ' '
038F:105C  E1 A8				loopz	locloop_102		; Loop if zf=1, cx>0

038F:105E  E1 E2				loopz	locloop_107		; Loop if zf=1, cx>0

038F:1060  A5					movsw				; Mov [si] to es:[di]
038F:1061  AC					lodsb				; String [si] to al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 36

038F:1062  A0 AE20				mov	al,byte ptr ds:[0AE20h]	; (038F:AE20=3Bh)

038F:1065			locloop_111:
038F:1065  E1 E2		;*		loopz	locloop_108		;*Loop if zf=1, cx>0

038F:1065  E1 E2				db	0E1h,0E2h
038F:1067  A0 AEAD				mov	al,byte ptr ds:[0AEADh]	; (038F:AEAD=0Eh)
038F:106A  A2 A5AB				mov	byte ptr ds:[0A5ABh],al	; (038F:A5AB=4)

038F:106D			locloop_112:
038F:106D  AD					lodsw				; String [si] to ax
038F:106E  A0 0A0D				mov	al,data_99		; (038F:0A0D=30h)
038F:1071  37					aaa				; Ascii adjust
038F:1072  0D 8D0A				or	ax,8D0Ah
038F:1075  A5					movsw				; Mov [si] to es:[di]
038F:1076  20 E3				and	bl,ah
038F:1078  A4					movsb				; Mov [si] to es:[di]
038F:1079  A0 E2A5				mov	al,byte ptr ds:[0E2A5h]	; (038F:E2A5=46h)
038F:107C  E1 EF				loopz	locloop_112		; Loop if zf=1, cx>0


038F:107E			locloop_114:
038F:107E  20 A7 AFA0				and	byte ptr ds:[0AFA0h][bx],ah	; (038F:AFA0=0E6h)
038F:1082  E3 E1				jcxz	locloop_111		; Jump if cx=0

038F:1084			locloop_115:
038F:1084  E2 A8				loop	locloop_104		; Loop if cx > 0

038F:1086  E2 EC		;*		loop	locloop_113		;*Loop if cx > 0

038F:1086  E2 EC				db	0E2h,0ECh
038F:1088  20 43 4F				and	[bp+di+4Fh],al
038F:108B  4D					dec	bp
038F:108C  4D					dec	bp
038F:108D  41					inc	cx
038F:108E  4E					dec	si
038F:108F  44					inc	sp
038F:1090  2E					db	2Eh
038F:1091  43					inc	bx

038F:1092			locloop_116:
038F:1092  4F					dec	di
038F:1093  4D					dec	bp
038F:1094  2C 20				sub	al,20h			; ' '
038F:1096  A7					cmpsw				; Cmp [si] to es:[di]
038F:1097  A0 A5A2				mov	al,byte ptr ds:[0A5A2h]	; (038F:A5A2=15h)
038F:109A  E8E0			data_130	dw	0E8E0h			; Data table (indexed access)

038F:109C			locloop_117:
038F:109C  A5					movsw				; Mov [si] to es:[di]
038F:109D  AD					lodsw				; String [si] to ax
038F:109E  A8 A5				test	al,0A5h
038F:10A0  20 E0				and	al,ah
038F:10A2  A0 AEA1				mov	al,byte ptr ds:[0AEA1h]	; (038F:AEA1=0Eh)
038F:10A5  E2 EB				loop	locloop_116		; Loop if cx > 0

038F:10A7			loc_118:
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 37

038F:10A7  0D 3B0A				or	ax,3B0Ah
038F:10AA  0D 8F0A				or	ax,8F0Ah
038F:10AD  E0 A5				loopnz	locloop_110		; Loop if zf=0, cx>0

038F:10AF  E0 A2				loopnz	locloop_109		; Loop if zf=0, cx>0

038F:10B1  A0 20AD				mov	al,data_154		; (038F:20AD=0)
038F:10B4  AF					scasw				; Scan es:[di] for ax
038F:10B5  E0 AE				loopnz	locloop_111		; Loop if zf=0, cx>0

038F:10B7  E6 A5				out	0A5h,al			; port 0A5h ??I/O Non-standard
038F:10B9  E1 E1				loopz	locloop_117		; Loop if zf=1, cx>0

038F:10BB  20 A2 E0A5				and	[bp+si-1F5Bh],ah
038F:10BF  E5 AD				in	ax,0ADh			; port 0ADh ??I/O Non-standard
038F:10C1  A5					movsw				; Mov [si] to es:[di]
038F:10C2  A3 20AE				mov	data_155,ax		; (038F:20AE=0)
038F:10C5  E3 E0				jcxz	loc_118			; Jump if cx=0
038F:10C7  AE					scasb				; Scan es:[di] for al
038F:10C8  A2 EFAD				mov	byte ptr ds:[0EFADh],al	; (038F:EFAD=80h)
038F:10CB  2C 20				sub	al,20h			; ' '
038F:10CD  AF					scasw				; Scan es:[di] for ax
038F:10CE  E0 AE				loopnz	locloop_114		; Loop if zf=0, cx>0

038F:10D0  A4					movsb				; Mov [si] to es:[di]
038F:10D1  AE					scasb				; Scan es:[di] for al
038F:10D2  AB					stosw				; Store ax to es:[di]
038F:10D3  A6					cmpsb				; Cmp [si] to es:[di]
038F:10D4  A5					movsw				; Mov [si] to es:[di]

038F:10D5			locloop_120:
038F:10D5  AD					lodsw				; String [si] to ax
038F:10D6  A8 A5				test	al,0A5h
038F:10D8  20 AD A2A5				and	byte ptr ds:[0A2A5h][di],ch	; (038F:A2A5=3)
038F:10DC  AE					scasb				; Scan es:[di] for al
038F:10DD  A7					cmpsw				; Cmp [si] to es:[di]
038F:10DE  AC					lodsb				; String [si] to al
038F:10DF  AE					scasb				; Scan es:[di] for al
038F:10E0  A6					cmpsb				; Cmp [si] to es:[di]
038F:10E1  AD					lodsw				; String [si] to ax
038F:10E2  AE					scasb				; Scan es:[di] for al
038F:10E3  0D 020A				or	ax,20Ah
038F:10E6  0D 580A				or	ax,580Ah
038F:10E9  0F			;*		pop	cs			; Dangerous-8088 only
038F:10E9  0F					db	0Fh
038F:10EA  01 00				add	[bx+si],ax
038F:10EC  87 0C				xchg	[si],cx
038F:10EE  01 00				add	[bx+si],ax
038F:10F0  58					pop	ax
038F:10F1			loc_121:
038F:10F1  0F			;*		pop	cs			; Dangerous-8088 only
038F:10F1  0F					db	0Fh
038F:10F2  01 00				add	[bx+si],ax
038F:10F4  00					db	0

038F:10F5			locloop_122:
038F:10F5  00 00				add	[bx+si],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 38

038F:10F7  00 89 0E01				add	byte ptr ds:[0E01h][bx+di],cl	; (038F:0E01=32h)
038F:10FB  04 17				add	al,17h
038F:10FD  8E					db	8Eh
038F:10FE  E8 A1A8				call	$-5E55h
038F:1101  AA					stosb				; Store al to es:[di]
038F:1102  A0 A720				mov	al,byte ptr ds:[0A720h]	; (038F:A720=38h)

038F:1105			locloop_124:
038F:1105  A0 A8E9				mov	al,byte ptr ds:[0A8E9h]	; (038F:A8E9=0D2h)
038F:1108  E2 EB				loop	locloop_122		; Loop if cx > 0

038F:110A  20 AE 20E2				and	[bp+20E2h],ch
038F:110E  A7					cmpsw				; Cmp [si] to es:[di]
038F:110F  A0 A8AF				mov	al,byte ptr ds:[0A8AFh]	; (038F:A8AF=74h)

038F:1112			locloop_126:
038F:1112  E1 A8		;*		loopz	locloop_119		;*Loop if zf=1, cx>0

038F:1112  E1 A8				db	0E1h,0A8h
038F:1114  17					pop	ss
038F:1115  8D A5 E0AF				lea	sp,cs:[0E0AFh][di]	; Load effective addr
038F:1119  A0 A8A2				mov	al,byte ptr ds:[0A8A2h]	; (038F:A8A2=2Eh)

038F:111C			locloop_127:
038F:111C  AB					stosw				; Store ax to es:[di]
038F:111D  EC					in	al,dx			; port 4005h ??I/O Non-standard
038F:111E			loc_128:
038F:111E  AD					lodsw				; String [si] to ax
038F:111F  AE					scasb				; Scan es:[di] for al
038F:1120  A5					movsw				; Mov [si] to es:[di]
038F:1121  20 E3				and	bl,ah
038F:1123  E1 E2		;*		loopz	locloop_125		;*Loop if zf=1, cx>0

038F:1123  E1 E2				db	0E1h,0E2h
038F:1125  E0 AE				loopnz	locloop_120		; Loop if zf=0, cx>0

038F:1127  A9 E2E1				test	ax,0E2E1h
038F:112A  A2 0EAE				mov	data_116,al		; (038F:0EAE=0A5h)
038F:112D  8D A5 20E2				lea	sp,cs:[20E2h][di]	; Load effective addr
038F:1131  A3 E2AE				mov	word ptr ds:[0E2AEh],ax	; (038F:E2AE=0EBE8h)
038F:1134  AE					scasb				; Scan es:[di] for al
038F:1135  A2 AEAD				mov	byte ptr ds:[0AEADh],al	; (038F:AEAD=0Eh)
038F:1138  E1 E2				loopz	locloop_127		; Loop if zf=1, cx>0

038F:113A  A8 20				test	al,20h			; ' '
038F:113C  8D A5 E0AF				lea	sp,cs:[0E0AFh][di]	; Load effective addr
038F:1140  A0 A8A2				mov	al,byte ptr ds:[0A8A2h]	; (038F:A8A2=2Eh)
038F:1143  AB					stosw				; Store ax to es:[di]
038F:1144  EC					in	al,dx			; port 4005h ??I/O Non-standard
038F:1145  AD					lodsw				; String [si] to ax
038F:1146  EB A9				jmp	short loc_121		; (10F1)
038F:1148  20 A7 AFA0				and	byte ptr ds:[0AFA0h][bx],ah	; (038F:AFA0=0E6h)

038F:114C			locloop_132:
038F:114C  E0 AE		;*		loopnz	locloop_123		;*Loop if zf=0, cx>0

038F:114C  E0 AE				db	0E0h,0AEh
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 39

038F:114E  E1 20				loopz	locloop_136		; Loop if zf=1, cx>0

038F:1150  AA					stosb				; Store al to es:[di]
038F:1151			loc_133:
038F:1151  20 E3				and	bl,ah
038F:1153  E1 E2		;*		loopz	locloop_130		;*Loop if zf=1, cx>0

038F:1153  E1 E2				db	0E1h,0E2h
038F:1155  E0 AE				loopnz	locloop_124		; Loop if zf=0, cx>0

038F:1157  A9 E2E1				test	ax,0E2E1h
038F:115A  A2 0FE3				mov	byte ptr ds:[0FE3h],al	; (038F:0FE3=0A9h)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_8		proc	near
038F:115D  8E					db	8Eh
038F:115E  E8 A1A8				call	$-5E55h
038F:1161  AA					stosb				; Store al to es:[di]
038F:1162  A0 A220				mov	al,byte ptr ds:[0A220h]	; (038F:A220=0D2h)
038F:1165  20 A4 ADA0				and	byte ptr ds:[0ADA0h][si],ah	; (038F:ADA0=0)
038F:1169  AD					lodsw				; String [si] to ax
038F:116A  EB E5				jmp	short loc_133		; (1151)
				sub_8		endp

038F:116C  2B 8D AFA5				sub	cx,word ptr ds:[0AFA5h][di]	; (038F:AFA5=1CEBh)

038F:1170			locloop_136:
038F:1170  E0 A0				loopnz	locloop_126		; Loop if zf=0, cx>0

038F:1172  A2 ABA8				mov	byte ptr ds:[0ABA8h],al	; (038F:ABA8=5Bh)
038F:1175  EC					in	al,dx			; port 8DB9h ??I/O Non-standard
038F:1176  AD					lodsw				; String [si] to ax
038F:1177  EB A5				jmp	short loc_128		; (111E)
							                        ;* No entry point to code
038F:1179  20 A0 A3E0				and	byte ptr ds:[0A3E0h][bx+si],ah	; (038F:A3E0=0B4h)
038F:117D  E3 AC		;*		jcxz	locloop_129		;*Jump if cx=0
038F:117D  E3 AC				db	0E3h,0ACh

038F:117F			locloop_139:
038F:117F  A5					movsw				; Mov [si] to es:[di]
038F:1180  AD					lodsw				; String [si] to ax

038F:1181			locloop_140:
038F:1181  E2 EB		;*		loop	locloop_135		;*Loop if cx > 0

038F:1181  E2 EB				db	0E2h,0EBh
038F:1183  20 A7 AFA0				and	byte ptr ds:[0AFA0h][bx],ah	; (038F:AFA0=0E6h)
038F:1187  E0 AE		;*		loopnz	locloop_130		;*Loop if zf=0, cx>0

038F:1187  E0 AE				db	0E0h,0AEh
038F:1189  E1 A0		;*		loopz	locloop_129		;*Loop if zf=1, cx>0

038F:1189  E1 A0				db	0E1h,0A0h
038F:118B  20 AA E320				and	[bp+si-1CE0h],ch
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 40

038F:118F  E1 E2		;*		loopz	locloop_137		;*Loop if zf=1, cx>0

038F:118F  E1 E2				db	0E1h,0E2h
038F:1191  E0 AE		;*		loopnz	locloop_131		;*Loop if zf=0, cx>0

038F:1191  E0 AE				db	0E0h,0AEh
038F:1193  A9 E2E1				test	ax,0E2E1h
038F:1196  A2 0DE3				mov	byte ptr ds:[0DE3h],al	; (038F:0DE3=1)
038F:1199  8E					db	8Eh
038F:119A  E8 A1A8				call	$-5E55h
038F:119D  AA					stosb				; Store al to es:[di]
038F:119E  A0 AF20				mov	al,byte ptr ds:[0AF20h]	; (038F:AF20=0C5h)
038F:11A1  AE					scasb				; Scan es:[di] for al
038F:11A2  A8 E1				test	al,0E1h
038F:11A4  AA					stosb				; Store al to es:[di]
038F:11A5  A0 8D19				mov	al,byte ptr ds:[8D19h]	; (038F:8D19=42h)
038F:11A8  A5					movsw				; Mov [si] to es:[di]
038F:11A9  AF					scasw				; Scan es:[di] for ax
038F:11AA  E0 A0				loopnz	locloop_132		; Loop if zf=0, cx>0


038F:11AC			locloop_141:
038F:11AC  A2 ABA8				mov	byte ptr ds:[0ABA8h],al	; (038F:ABA8=5Bh)
038F:11AF  EC					in	al,dx			; port 8DB9h ??I/O Non-standard
038F:11B0  AD					lodsw				; String [si] to ax
038F:11B1  EB A9		;*		jmp	short loc_134		;*(115C)
038F:11B1  EB A9				db	0EBh,0A9h
							                        ;* No entry point to code
038F:11B3  20 E2				and	dl,ah
038F:11B5  A8 AF				test	al,0AFh
038F:11B7  20 AD E1AE				and	byte ptr ds:[0E1AEh][di],ch	; (038F:E1AE=8)
038F:11BB  A8 E2				test	al,0E2h
038F:11BD  A5					movsw				; Mov [si] to es:[di]
038F:11BE  AB					stosw				; Store ax to es:[di]
038F:11BF  EF					out	dx,ax			; port 8D00h ??I/O Non-standard
038F:11C0  10 91 AAA5				adc	byte ptr ds:[0AAA5h][bx+di],dl	; (038F:AAA5=0C2h)
038F:11C4  E2 AE		;*		loop	locloop_138		;*Loop if cx > 0

038F:11C4  E2 AE				db	0E2h,0AEh
038F:11C6  E0 20				loopnz	locloop_144		; Loop if zf=0, cx>0

038F:11C8  AD					lodsw				; String [si] to ax
038F:11C9  A5					movsw				; Mov [si] to es:[di]
038F:11CA  20 AD A9A0				and	byte ptr ds:[0A9A0h][di],ch	; (038F:A9A0=80h)
038F:11CE  A4					movsb				; Mov [si] to es:[di]
038F:11CF  A5					movsw				; Mov [si] to es:[di]
038F:11D0  AD					lodsw				; String [si] to ax
038F:11D1  15 2082				adc	ax,2082h
038F:11D4  AF					scasw				; Scan es:[di] for ax
038F:11D5  E0 A8				loopnz	locloop_139		; Loop if zf=0, cx>0

038F:11D7  AD					lodsw				; String [si] to ax
038F:11D8  E2 A5				loop	locloop_139		; Loop if cx > 0

038F:11DA  E0 A5				loopnz	locloop_140		; Loop if zf=0, cx>0

038F:11DC  20 AD E2A5				and	byte ptr ds:[0E2A5h][di],ch	; (038F:E2A5=46h)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 41

038F:11E0  20 A1 ACE3				and	byte ptr ds:[0ACE3h][bx+di],ah	; (038F:ACE3=80h)
038F:11E4  A0 A8A3				mov	al,byte ptr ds:[0A8A3h]	; (038F:A8A3=3Bh)
038F:11E7  11 8E A8E8				adc	[bp-5718h],cx
038F:11EB  A1 A0AA				mov	ax,word ptr ds:[0A0AAh]	; (038F:A0AA=326h)
038F:11EE  20 AF A8E0				and	byte ptr ds:[0A8E0h][bx],ch	; (038F:A8E0=1Ch)
038F:11F2  20 A7 AFA0				and	byte ptr ds:[0AFA0h][bx],ah	; (038F:AFA0=0E6h)
038F:11F6  A8 E1				test	al,0E1h
038F:11F8  A8 11				test	al,11h
038F:11FA  8E					db	8Eh
038F:11FB  E8 A1A8				call	$-5E55h

038F:11FE			locloop_146:
038F:11FE  AA					stosb				; Store al to es:[di]
038F:11FF  A0 AF20				mov	al,byte ptr ds:[0AF20h]	; (038F:AF20=0C5h)
038F:1202  E0 A8				loopnz	locloop_141		; Loop if zf=0, cx>0

038F:1204  20 E7				and	bh,ah
038F:1206  E2 A5		;*		loop	locloop_142		;*Loop if cx > 0

038F:1206  E2 A5				db	0E2h,0A5h
038F:1208  AD					lodsw				; String [si] to ax
038F:1209  A8 A8				test	al,0A8h
038F:120B  12 8E E9A1				adc	cl,[bp-165Fh]
038F:120F  A8 A9				test	al,0A9h
038F:1211  20 E1				and	cl,ah
038F:1213  A1 A9AE				mov	ax,word ptr ds:[0A9AEh]	; (038F:A9AE=2CDh)
038F:1216  20 E1				and	cl,ah
038F:1218  A8 E1				test	al,0E1h
038F:121A  E2 A5		;*		loop	locloop_143		;*Loop if cx > 0

038F:121A  E2 A5				db	0E2h,0A5h
038F:121C  AC					lodsb				; String [si] to al
038F:121D  EB 24				jmp	short loc_152		; (1243)
038F:121F  8D A0 E3E0				lea	sp,cs:[0E3E0h][bx+si]	; Load effective addr
038F:1223  E8 ADA5				call	$-5258h
038F:1226  A8 A5				test	al,0A5h
038F:1228  20 E0				and	al,ah
038F:122A  A5					movsw				; Mov [si] to es:[di]

038F:122B			locloop_151:
038F:122B  A6					cmpsb				; Cmp [si] to es:[di]
038F:122C  A8 AC				test	al,0ACh
038F:122E  A0 E120				mov	al,byte ptr ds:[0E120h]	; (038F:E120=0E9h)
038F:1231  AE					scasb				; Scan es:[di] for al
038F:1232  A2 A5AC				mov	byte ptr ds:[0A5ACh],al	; (038F:A5AC=80h)
038F:1235  E1 E2		;*		loopz	locloop_148		;*Loop if zf=1, cx>0

038F:1235  E1 E2				db	0E1h,0E2h
038F:1237  AD					lodsw				; String [si] to ax
038F:1238  AE					scasb				; Scan es:[di] for al
038F:1239  A3 20AE				mov	data_155,ax		; (038F:20AE=0)
038F:123C  A4					movsb				; Mov [si] to es:[di]
038F:123D  AE					scasb				; Scan es:[di] for al
038F:123E  E1 E2		;*		loopz	locloop_149		;*Loop if zf=1, cx>0

038F:123E  E1 E2				db	0E1h,0E2h
038F:1240  E3 AF		;*		jcxz	loc_145			;*Jump if cx=0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 42

038F:1240  E3 AF				db	0E3h,0AFh
038F:1242  A0 8D14				mov	al,byte ptr ds:[8D14h]	; (038F:8D14=0E8h)
038F:1245  A0 E3E0				mov	al,byte ptr ds:[0E3E0h]	; (038F:E3E0=45h)
038F:1248  E8 ADA5				call	$-5258h
038F:124B  A8 A5				test	al,0A5h
038F:124D  20 A1 AEAB				and	byte ptr ds:[0AEABh][bx+di],ah	; (038F:AEAB=61h)
038F:1251  AA					stosb				; Store al to es:[di]
038F:1252  A8 E0				test	al,0E0h
038F:1254  AE					scasb				; Scan es:[di] for al
038F:1255  A2 A8AA				mov	byte ptr ds:[0A8AAh],al	; (038F:A8AA=2Eh)
038F:1258  18 8D AFA5				sbb	byte ptr ds:[0AFA5h][di],cl	; (038F:AFA5=0EBh)
038F:125C  E0 A0				loopnz	locloop_146		; Loop if zf=0, cx>0

038F:125E  A2 ABA8				mov	byte ptr ds:[0ABA8h],al	; (038F:ABA8=5Bh)
038F:1261  EC					in	al,dx			; port 8D00h ??I/O Non-standard

038F:1262			locloop_157:
038F:1262  AD					lodsw				; String [si] to ax
038F:1263  A0 20EF				mov	al,data_156		; (038F:20EF=0FFh)
038F:1266  E1 AC		;*		loopz	locloop_147		;*Loop if zf=1, cx>0

038F:1266  E1 AC				db	0E1h,0ACh
038F:1268  A5					movsw				; Mov [si] to es:[di]
038F:1269  AD					lodsw				; String [si] to ax
038F:126A  A0 A420				mov	al,byte ptr ds:[0A420h]	; (038F:A420=0FFh)
038F:126D  A8 E1				test	al,0E1h
038F:126F  AA					stosb				; Store al to es:[di]
038F:1270  A0 8D27				mov	al,byte ptr ds:[8D27h]	; (038F:8D27=26h)
038F:1273  A5					movsw				; Mov [si] to es:[di]
038F:1274  A4					movsb				; Mov [si] to es:[di]
038F:1275  AE					scasb				; Scan es:[di] for al
038F:1276  E1 E2		;*		loopz	locloop_154		;*Loop if zf=1, cx>0

038F:1276  E1 E2				db	0E1h,0E2h
038F:1278  E3 AF		;*		jcxz	loc_150			;*Jump if cx=0
038F:1278  E3 AF				db	0E3h,0AFh
038F:127A  A5					movsw				; Mov [si] to es:[di]
038F:127B  AD					lodsw				; String [si] to ax
038F:127C  20 46 43				and	[bp+43h],al
038F:127F  42					inc	dx
038F:1280  20 28				and	[bx+si],ch
038F:1282  A1 AEAB				mov	ax,word ptr ds:[0AEABh]	; (038F:AEAB=0B461h)
038F:1285  AA					stosb				; Store al to es:[di]
038F:1286  20 E3				and	bl,ah

038F:1288			locloop_159:
038F:1288  AF					scasw				; Scan es:[di] for ax
038F:1289  E0 A0				loopnz	locloop_151		; Loop if zf=0, cx>0

038F:128B  A2 A5AB				mov	byte ptr ds:[0A5ABh],al	; (038F:A5AB=4)
038F:128E  AD					lodsw				; String [si] to ax
038F:128F  A8 EF				test	al,0EFh
038F:1291  20 E4				and	ah,ah
038F:1293  A0 ABA9				mov	al,byte ptr ds:[0ABA9h]	; (038F:ABA9=3Ch)
038F:1296  AE					scasb				; Scan es:[di] for al
038F:1297  AC					lodsb				; String [si] to al
038F:1298  29 19				sub	[bx+di],bx
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 43

038F:129A  90					nop
038F:129B  A5					movsw				; Mov [si] to es:[di]
038F:129C  E1 E3		;*		loopz	locloop_158		;*Loop if zf=1, cx>0

038F:129C  E1 E3				db	0E1h,0E3h
038F:129E  E0 E1		;*		loopnz	locloop_158		;*Loop if zf=0, cx>0

038F:129E  E0 E1				db	0E0h,0E1h
038F:12A0  EB 20				jmp	short loc_164		; (12C2)
038F:12A2  E1 A8		;*		loopz	locloop_153		;*Loop if zf=1, cx>0

038F:12A2  E1 A8				db	0E1h,0A8h
038F:12A4  E1 E2				loopz	locloop_159		; Loop if zf=1, cx>0

038F:12A6  A5					movsw				; Mov [si] to es:[di]
038F:12A7  AC					lodsb				; String [si] to al
038F:12A8  EB 20				jmp	short loc_165		; (12CA)
038F:12AA  A8 E1				test	al,0E1h
038F:12AC  E7 A5				out	0A5h,ax			; port 0A5h ??I/O Non-standard

038F:12AE			locloop_162:
038F:12AE  E0 AF		;*		loopnz	locloop_156		;*Loop if zf=0, cx>0

038F:12AE  E0 AF				db	0E0h,0AFh
038F:12B0  A0 EBAD				mov	al,byte ptr ds:[0EBADh]	; (038F:EBAD=36h)
038F:12B3  1E					push	ds
038F:12B4  8D A5 AEE1				lea	sp,cs:[0AEE1h][di]	; Load effective addr
038F:12B8  AE					scasb				; Scan es:[di] for al
038F:12B9  E2 A2		;*		loop	locloop_155		;*Loop if cx > 0

038F:12B9  E2 A2				db	0E2h,0A2h

038F:12BB			locloop_163:
038F:12BB  A5					movsw				; Mov [si] to es:[di]
038F:12BC  E2 E1		;*		loop	locloop_160		;*Loop if cx > 0

038F:12BC  E2 E1				db	0E2h,0E1h
038F:12BE  E2 A2				loop	locloop_157		; Loop if cx > 0

038F:12C0  A8 A5				test	al,0A5h
038F:12C2			loc_164:
038F:12C2  20 AA A4AE				and	[bp+si-5B52h],ch
038F:12C6  AE					scasb				; Scan es:[di] for al
038F:12C7  A2 E5EB				mov	byte ptr ds:[0E5EBh],al	; (038F:E5EB=88h)
038F:12CA			loc_165:
038F:12CA  20 E1				and	cl,ah
038F:12CC  E2 E0				loop	locloop_162		; Loop if cx > 0

038F:12CE			loc_166:
038F:12CE  A0 A8AD				mov	al,byte ptr ds:[0A8ADh]	; (038F:A8AD=0A3h)
038F:12D1  E6 1D				out	1Dh,al			; port 1Dh ??I/O Non-standard
038F:12D3  8D A5 AEA4				lea	sp,cs:[0AEA4h][di]	; Load effective addr
038F:12D7  E1 E2				loopz	locloop_163		; Loop if zf=1, cx>0


038F:12D9			locloop_168:
038F:12D9  A0 AEE2				mov	al,byte ptr ds:[0AEE2h]	; (038F:AEE2=7)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 44

038F:12DC  E7 AD				out	0ADh,ax			; port 0ADh ??I/O Non-standard
038F:12DE  AE					scasb				; Scan es:[di] for al
038F:12DF  20 A2 A5A2				and	[bp+si-5A5Eh],ah
038F:12E3  A4					movsb				; Mov [si] to es:[di]
038F:12E4  A5					movsw				; Mov [si] to es:[di]
038F:12E5  AD					lodsw				; String [si] to ax
038F:12E6  AD					lodsw				; String [si] to ax
038F:12E7  EB E5				jmp	short loc_166		; (12CE)
							                        ;* No entry point to code
038F:12E9  20 A4 ADA0				and	byte ptr ds:[0ADA0h][si],ah	; (038F:ADA0=0)
038F:12ED  AD					lodsw				; String [si] to ax
038F:12EE  EB E5		;*		jmp	short loc_167		;*(12D5)
038F:12EE  EB E5				db	0EBh,0E5h
							                        ;* No entry point to code
038F:12F0  1B 8D A4A5				sbb	cx,word ptr ds:[0A4A5h][di]	; (038F:A4A5=8026h)
038F:12F4  AE					scasb				; Scan es:[di] for al
038F:12F5  E1 E2				loopz	locloop_168		; Loop if zf=1, cx>0

038F:12F7  A0 AEE2				mov	al,byte ptr ds:[0AEE2h]	; (038F:AEE2=7)
038F:12FA  E7 AD				out	0ADh,ax			; port 0ADh ??I/O Non-standard
038F:12FC  AE					scasb				; Scan es:[di] for al
038F:12FD  20 AC E1A5				and	byte ptr ds:[0E1A5h][si],ch	; (038F:E1A5=3Fh)
038F:1301  E2 A0		;*		loop	locloop_161		;*Loop if cx > 0

038F:1301  E2 A0				db	0E2h,0A0h
038F:1303  20 AD 20A0				and	data_151[di],ch		; (038F:20A0=5Bh)
038F:1307  A4					movsb				; Mov [si] to es:[di]
038F:1308  A8 E1				test	al,0E1h
038F:130A  AA					stosb				; Store al to es:[di]
038F:130B  A5					movsw				; Mov [si] to es:[di]
038F:130C  0C 09				or	al,9
038F:130E  24 09				and	al,9
038F:1310  3C 09				cmp	al,9
038F:1312  4B					dec	bx
038F:1313  09 6C 09				or	[si+9],bp
038F:1316  7C 09				jl	loc_169			; Jump if <
038F:1318  A8 09				test	al,9
038F:131A  B6 09				mov	dh,9
038F:131C  D0 09				ror	byte ptr [bx+di],1	; Rotate
038F:131E  E1 09				loopz	locloop_170		; Loop if zf=1, cx>0

038F:1320  F7					db	0F7h
038F:1321			loc_169:
038F:1321  09 09				or	[bx+di],cx
038F:1323  0A 1B				or	bl,[bp+di]
038F:1325  0A 2E 530A				or	ch,byte ptr ds:[530Ah]	; (038F:530A=0)

038F:1329			locloop_170:
038F:1329  0A 68 0A				or	ch,[bx+si+0Ah]
038F:132C  81 0A 0AA9				or	word ptr [bp+si],0AA9h
038F:1330  C3					retn
							                        ;* No entry point to code
038F:1331  0A E2				or	ah,dl
038F:1333  0A 00				or	al,[bx+si]
038F:1335  0B 18				or	bx,[bx+si]
038F:1337  91					xchg	cx,ax
038F:1338  AB					stosw				; Store ax to es:[di]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 45

038F:1339  A8 E8				test	al,0E8h
038F:133B  AA					stosb				; Store al to es:[di]
038F:133C  AE					scasb				; Scan es:[di] for al
038F:133D  AC					lodsb				; String [si] to al
038F:133E  20 AC 004D				and	data_16[si],ch		; (038F:004D=98h)
038F:1342  00 07				add	[bx],al
038F:1344  00 AF E0A0				add	byte ptr ds:[0E0A0h][bx],ch	; (038F:E0A0=78h)
038F:1348  A0 A5AC				mov	al,byte ptr ds:[0A5ACh]	; (038F:A5AC=80h)
038F:134B  E2 E0		;*		loop	locloop_171		;*Loop if cx > 0

038F:134B  E2 E0				db	0E2h,0E0h
038F:134D  AE					scasb				; Scan es:[di] for al
038F:134E  A2 0021				mov	byte ptr ds:[21h],al	; (038F:0021=1)
038F:1351  01 00				add	[bx+si],ax

038F:1353			locloop_172:
038F:1353  00					db	0
038F:1354  00					db	0
038F:1355  00 00				add	[bx+si],al
038F:1357  00 C4				add	ah,al
038F:1359  0C 00				or	al,0
038F:135B  00 FF				add	bh,bh
038F:135D  0013[FF]				db	19 dup (0FFh)
038F:1370  43					inc	bx
038F:1371  3A 5C 57				cmp	bl,[si+57h]
038F:1374  49					dec	cx
038F:1375  4E					dec	si
038F:1376  44					inc	sp
038F:1377  4F					dec	di
038F:1378  57					push	di
038F:1379  53					push	bx
038F:137A  5C					pop	sp
038F:137B  54					push	sp
038F:137C  45					inc	bp
038F:137D  4D					dec	bp
038F:137E  50					push	ax
038F:137F  5C					pop	sp
038F:1380  73 63				jnc	loc_176			; Jump if carry=0
038F:1382  73 31				jnc	loc_175			; Jump if carry=0
038F:1384  38 2E 6D74				cmp	byte ptr ds:[6D74h],ch	; (038F:6D74=11h)
038F:1388  70 00				jo	$+2			; delay for I/O
038F:138A  0027[00]				db	39 dup (0)
038F:13B1  E0 A0				loopnz	locloop_172		; Loop if zf=0, cx>0

038F:13B3  AC					lodsb				; String [si] to al
038F:13B4  A5					movsw				; Mov [si] to es:[di]
038F:13B5			loc_175:
038F:13B5  E2 E0		;*		loop	locloop_173		;*Loop if cx > 0

038F:13B5  E2 E0				db	0E2h,0E0h
038F:13B7  A0 A220				mov	al,byte ptr ds:[0A220h]	; (038F:A220=0D2h)
038F:13BA  EB E5		;*		jmp	short loc_174		;*(13A1)
038F:13BA  EB E5				db	0EBh,0E5h
							                        ;* No entry point to code
038F:13BC  AE					scasb				; Scan es:[di] for al
038F:13BD  A4					movsb				; Mov [si] to es:[di]
038F:13BE  A8 E2				test	al,0E2h
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 46

038F:13C0  4D					dec	bp
038F:13C1  0E					push	cs
038F:13C2  04 44				add	al,44h			; 'D'
038F:13C4  00 E0				add	al,ah
038F:13C6  A5					movsw				; Mov [si] to es:[di]
038F:13C7  A4					movsb				; Mov [si] to es:[di]
038F:13C8  A5					movsw				; Mov [si] to es:[di]
038F:13C9  AB					stosw				; Store ax to es:[di]
038F:13CA  EB 20				jmp	short loc_177		; (13EC)
038F:13CC  A4					movsb				; Mov [si] to es:[di]
038F:13CD  AE					scasb				; Scan es:[di] for al
038F:13CE  AF					scasw				; Scan es:[di] for ax
038F:13CF  E3 43				jcxz	loc_178			; Jump if cx=0
038F:13D1  4F 4D 53 50 45 43			db	'OMSPEC=C:\WINDOWS\SYSTEM32\COMMA'
038F:13D7  3D 43 3A 5C 57 49
038F:13DD  4E 44 4F 57 53 5C
038F:13E3  53 59 53 54 45 4D
038F:13E9  33 32 5C 43 4F 4D
038F:13EF  4D 41
038F:13F1  4E 44 2E 43 4F 4D			db	'ND.COM', 0
038F:13F7  00
038F:13F8  41 4C 4C 55 53 45			db	'ALLUSERSPROFILE=C:\DOCUME~1\ALLU'
038F:13FE  52 53 50 52 4F 46
038F:1404  49 4C 45 3D 43 3A
038F:140A  5C 44 4F 43 55 4D
038F:1410  45 7E 31 5C 41 4C
038F:1416  4C 55
038F:1418  53 45 7E 31 00			db	'SE~1', 0
038F:141D  41 50 50 44 41 54			db	'APPDATA=C:\DOCUME~1\9335~1\APPLI'
038F:1423  41 3D 43 3A 5C 44
038F:1429  4F 43 55 4D 45 7E
038F:142F  31 5C 39 33 33 35
038F:1435  7E 31 5C 41 50 50
038F:143B  4C 49
038F:143D  43 7E 31 00				db	'C~1', 0
038F:1441  43 4C 49 45 4E 54			db	'CLIENTNAME=Console', 0
038F:1447  4E 41 4D 45 3D 43
038F:144D  6F 6E 73 6F 6C 65
038F:1453  00
038F:1454  43 4F 4D 4D 4F 4E			db	'COMMONPROGRAMFILES=C:\PROGRA~1\C'
038F:145A  50 52 4F 47 52 41
038F:1460  4D 46 49 4C 45 53
038F:1466  3D 43 3A 5C 50 52
038F:146C  4F 47 52 41 7E 31
038F:1472  5C 43
038F:1474  4F 4D 4D 4F 4E 7E			db	'OMMON~1', 0
038F:147A  31 00
038F:147C  43 4F 4D 50 55 54			db	'COMPUTERNAME=DAN-350B93BA783', 0
038F:1482  45 52 4E 41 4D 45
038F:1488  3D 44 41 4E 2D 33
038F:148E  35 30 42 39 33 42
038F:1494  41 37 38 33 00
038F:1499  46 50 5F 4E 4F 5F			db	'FP_NO_HOST_CHECK=NO', 0
038F:149F  48 4F 53 54 5F 43
038F:14A5  48 45 43 4B 3D 4E
038F:14AB  4F 00
038F:14AD  48 4F 4D 45 44 52			db	'HOMEDRIVE=C:', 0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 47

038F:14B3  49 56 45 3D 43 3A
038F:14B9  00
038F:14BA  48 4F 4D 45 50 41			db	'HOMEPATH=\Documents and Settings'
038F:14C0  54 48 3D 5C 44 6F
038F:14C6  63 75 6D 65 6E 74
038F:14CC  73 20 61 6E 64 20
038F:14D2  53 65 74 74 69 6E
038F:14D8  67 73
038F:14DA  5C 5F				db	'\_'
038F:14DC  FD					std				; Set direction flag
038F:14DD  BF 2DF0				mov	di,2DF0h
038F:14E0  F0> A1 A0A2		                           lock	mov	ax,word ptr ds:[0A0A2h]	; (038F:A0A2=33A1h)
038F:14E4  FF A2 A052				jmp	word ptr [bp+si-5FAEh]	;*
038F:14E8  00 4C 4F				add	[si+4Fh],cl
038F:14EB  47 4F 4E 53 45 52			db	'GONSERVER=\\DAN-350B93BA783', 0
038F:14F1  56 45 52 3D 5C 5C
038F:14F7  44 41 4E 2D 33 35
038F:14FD  30 42 39 33 42 41
038F:1503  37 38 33 00
038F:1507  4E 55 4D 42 45 52			db	'NUMBER_OF_PROCESSORS=1', 0
038F:150D  5F 4F 46 5F 50 52
038F:1513  4F 43 45 53 53 4F
038F:1519  52 53 3D 31 00
038F:151E  4F 53 3D 57 69 6E			db	'OS=Windows_NT', 0
038F:1524  64 6F 77 73 5F 4E
038F:152A  54 00
038F:152C  50 41 54 48 3D 43			db	'PATH=C:\WINDOWS\system32;C:\WIND'
038F:1532  3A 5C 57 49 4E 44
038F:1538  4F 57 53 5C 73 79
038F:153E  73 74 65 6D 33 32
038F:1544  3B 43 3A 5C 57 49
038F:154A  4E 44
038F:154C  4F 57 53 3B 43 3A			db	'OWS;C:\WINDOWS\System32\Wbem', 0
038F:1552  5C 57 49 4E 44 4F
038F:1558  57 53 5C 53 79 73
038F:155E  74 65 6D 33 32 5C
038F:1564  57 62 65 6D 00
038F:1569  50 41 54 48 45 58			db	'PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS'
038F:156F  54 3D 2E 43 4F 4D
038F:1575  3B 2E 45 58 45 3B
038F:157B  2E 42 41 54 3B 2E
038F:1581  43 4D 44 3B 2E 56
038F:1587  42 53
038F:1589  3B 2E 56 42 45 3B			db	';.VBE;.JS;.JSE;.WSF;.WSH', 0
038F:158F  2E 4A 53 3B 2E 4A
038F:1595  53 45 3B 2E 57 53
038F:159B  46 3B 2E 57 53 48
038F:15A1  00
038F:15A2  50 52 4F 43 45 53			db	'PROCESSOR_ARCHITECTURE=x86', 0
038F:15A8  53 4F 52 5F 41 52
038F:15AE  43 48 49 54 45 43
038F:15B4  54 55 52 45 3D 78
038F:15BA  38 36 00
038F:15BD  50 52 4F 43 45 53			db	'PROCESSOR_IDENTIFIER=x86 Family '
038F:15C3  53 4F 52 5F 49 44
038F:15C9  45 4E 54 49 46 49
038F:15CF  45 52 3D 78 38 36
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 48

038F:15D5  20 46 61 6D 69 6C
038F:15DB  79 20
038F:15DD  36 20 4D 6F 64 65			db	'6 Model 69 Stepping 1, GenuineIn'
038F:15E3  6C 20 36 39 20 53
038F:15E9  74 65 70 70 69 6E
038F:15EF  67 20 31 2C 20 47
038F:15F5  65 6E 75 69 6E 65
038F:15FB  49 6E
038F:15FD  74 65 6C 00				db	'tel', 0
038F:1601  50 52 4F 43 45 53			db	'PROCESSOR_LEVEL=6', 0
038F:1607  53 4F 52 5F 4C 45
038F:160D  56 45 4C 3D 36 00
038F:1613  50 52 4F 43 45 53			db	'PROCESSOR_REVISION=4501', 0
038F:1619  53 4F 52 5F 52 45
038F:161F  56 49 53 49 4F 4E
038F:1625  3D 34 35 30 31 00
038F:162B  50 52 4F 47 52 41			db	'PROGRAMFILES=C:\PROGRA~1', 0
038F:1631  4D 46 49 4C 45 53
038F:1637  3D 43 3A 5C 50 52
038F:163D  4F 47 52 41 7E 31
038F:1643  00
038F:1644  50 52 4F 4D 50 54			db	'PROMPT=$'
038F:164A  3D 24
038F:164C  50 24				db	'P$'
038F:164E  47 00				db	'G', 0
038F:1650  53 45 53 53 49 4F			db	'SESSIONNAME=Console', 0
038F:1656  4E 4E 41 4D 45 3D
038F:165C  43 6F 6E 73 6F 6C
038F:1662  65 00
038F:1664  53 59 53 54 45 4D			db	'SYSTEMDRIVE=C:', 0
038F:166A  44 52 49 56 45 3D
038F:1670  43 3A 00
038F:1673  53 59 53 54 45 4D			db	'SYSTEMROOT=C:\WINDOWS', 0
038F:1679  52 4F 4F 54 3D 43
038F:167F  3A 5C 57 49 4E 44
038F:1685  4F 57 53 00
038F:1689  54 45 4D 50 3D 43			db	'TEMP=C:\WINDOWS\TEMP', 0
038F:168F  3A 5C 57 49 4E 44
038F:1695  4F 57 53 5C 54 45
038F:169B  4D 50 00
038F:169E  54 4D 50 3D 43 3A			db	'TMP=C:\WINDOWS\TEMP', 0
038F:16A4  5C 57 49 4E 44 4F
038F:16AA  57 53 5C 54 45 4D
038F:16B0  50 00
038F:16B2  55 53 45 52 44 4F			db	'USERDOMAIN=DAN-350B93BA783', 0
038F:16B8  4D 41 49 4E 3D 44
038F:16BE  41 4E 2D 33 35 30
038F:16C4  42 39 33 42 41 37
038F:16CA  38 33 00
038F:16CD  55 53 45 52 4E 41			db	'USERNAME=_'
038F:16D3  4D 45 3D 5F
038F:16D7  FD					std				; Set direction flag
038F:16D8  BF 2DF0				mov	di,2DF0h
038F:16DB  F0> A1 A0A2		                           lock	mov	ax,word ptr ds:[0A0A2h]	; (038F:A0A2=33A1h)
038F:16DF  FF A2 A052				jmp	word ptr [bp+si-5FAEh]	;*
038F:16E3  00 55 53				add	[di+53h],dl
038F:16E6  45 52 50 52 4F 46			db	'ERPROFILE=C:\DOCUME~1\9335~1', 0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 49

038F:16EC  49 4C 45 3D 43 3A
038F:16F2  5C 44 4F 43 55 4D
038F:16F8  45 7E 31 5C 39 33
038F:16FE  33 35 7E 31 00
038F:1703  42 4C 41 53 54 45			db	'BLASTER=A220 I5 D1 P330 T3'
038F:1709  52 3D 41 32 32 30
038F:170F  20 49 35 20 44 31
038F:1715  20 50 33 33 30 20
038F:171B  54 33
038F:171D  00 00				add	[bx+si],al
038F:171F  92					xchg	dx,ax
038F:1720  E0 A5		;*		loopnz	locloop_179		;*Loop if zf=0, cx>0

038F:1720  E0 A5				db	0E0h,0A5h
038F:1722  A1 A5E3				mov	ax,word ptr ds:[0A5E3h]	; (038F:A5E3=0F103h)
038F:1725  AC					lodsb				; String [si] to al
038F:1726  EB A9		;*		jmp	short loc_180		;*(16D1)
038F:1726  EB A9				db	0EBh,0A9h
							                        ;* No entry point to code
038F:1728  20 AA ACAE				and	[bp+si-5352h],ch
038F:172C  AF					scasw				; Scan es:[di] for ax
038F:172D  AE					scasb				; Scan es:[di] for al
038F:172E  AD					lodsw				; String [si] to ax
038F:172F  A5					movsw				; Mov [si] to es:[di]
038F:1730  AD					lodsw				; String [si] to ax
038F:1731  E2 20				loop	locloop_184		; Loop if cx > 0

038F:1733  E1 A8		;*		loopz	locloop_181		;*Loop if zf=1, cx>0

038F:1733  E1 A8				db	0E1h,0A8h
038F:1735  E1 E2		;*		loopz	locloop_182		;*Loop if zf=1, cx>0

038F:1735  E1 E2				db	0E1h,0E2h
038F:1737  A5					movsw				; Mov [si] to es:[di]
038F:1738  AC					lodsb				; String [si] to al
038F:1739  EB 20				jmp	short loc_185		; (175B)
							                        ;* No entry point to code
038F:173B  AD					lodsw				; String [si] to ax
038F:173C  A5					movsw				; Mov [si] to es:[di]
038F:173D  20 E3				and	bl,ah
038F:173F  E1 E2		;*		loopz	locloop_183		;*Loop if zf=1, cx>0

038F:173F  E1 E2				db	0E1h,0E2h
038F:1741  A0 AEAD				mov	al,byte ptr ds:[0AEADh]	; (038F:AEAD=0Eh)
038F:1744  A2 A5AB				mov	byte ptr ds:[0A5ABh],al	; (038F:A5AB=4)
038F:1747  AD					lodsw				; String [si] to ax
038F:1748  9D					popf				; Pop flags
038F:1749  0C B2				or	al,0B2h
038F:174B  0C C1				or	al,0C1h
038F:174D  0C D0				or	al,0D0h
038F:174F  0C ED				or	al,0EDh
038F:1751  0C FA				or	al,0FAh

038F:1753			locloop_184:
038F:1753  0C 12				or	al,12h
038F:1755  0D 0D35				or	ax,0D35h
038F:1758  49					dec	cx
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 50

038F:1759  0D 0D69				or	ax,0D69h
038F:175C  91					xchg	cx,ax
038F:175D  0D 0DA5				or	ax,0DA5h
038F:1760  C3					retn
038F:1761  0D 0000				or	ax,0
038F:1764  D7					xlat				; al=[al+[bx]] table
038F:1765  0D 0DEE				or	ax,0DEEh
038F:1768  0E					push	cs
038F:1769  0E					push	cs
038F:176A  20 0E 090C				and	byte ptr ds:[90Ch],cl	; (038F:090C=1)
038F:176E  24 09				and	al,9
038F:1770  3C 09				cmp	al,9
038F:1772  4B					dec	bx
038F:1773  09 6C 09				or	[si+9],bp
038F:1776  7C 09				jl	loc_186			; Jump if <
038F:1778  A8 09				test	al,9
038F:177A  B6 09				mov	dh,9
038F:177C  D0 09				ror	byte ptr [bx+di],1	; Rotate
038F:177E  E1 09				loopz	locloop_187		; Loop if zf=1, cx>0

038F:1780  F7					db	0F7h
038F:1781			loc_186:
038F:1781  09 09				or	[bx+di],cx
038F:1783  0A 1B				or	bl,[bp+di]
038F:1785  0A 2E 530A				or	ch,byte ptr ds:[530Ah]	; (038F:530A=0)

038F:1789			locloop_187:
038F:1789  0A 68 0A				or	ch,[bx+si+0Ah]
038F:178C  81 0A 0AA9				or	word ptr [bp+si],0AA9h
038F:1790  C3					retn
							                        ;* No entry point to code
038F:1791  0A E2				or	ah,dl
038F:1793  0A 00				or	al,[bx+si]
038F:1795  0B 00				or	ax,[bx+si]
038F:1797  004F[00]				db	79 dup (0)
038F:17E6  32 0E 0000				xor	cl,byte ptr ds:[0]	; (038F:0000=0)
038F:17EA  42					inc	dx
038F:17EB  0E					push	cs
038F:17EC  66					db	66h
038F:17ED  0E					push	cs
038F:17EE  8F					db	8Fh
038F:17EF  0E					push	cs
038F:17F0  B3 0E				mov	bl,0Eh
038F:17F2  CF					iret				; Interrupt return
							                        ;* No entry point to code
038F:17F3  0E					push	cs
038F:17F4  E3 0E				jcxz	loc_188			; Jump if cx=0
038F:17F6  F9					stc				; Set carry flag
038F:17F7  0E					push	cs
038F:17F8  0E					push	cs
038F:17F9  0F			;*		pop	cs			; Dangerous-8088 only
038F:17F9  0F					db	0Fh
038F:17FA  2E					db	2Eh
038F:17FB  0F			;*		pop	cs			; Dangerous-8088 only
038F:17FB  0F					db	0Fh
038F:17FC  00					db	0
038F:17FD  00 00				add	[bx+si],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 51

038F:17FF  00 BB 07F7				add	[bp+di+7F7h],bh
038F:1803  3C 02				cmp	al,2
038F:1805  74 1B				je	loc_189			; Jump if equal
038F:1807  BB 07B1				mov	bx,7B1h
038F:180A  3C 08				cmp	al,8
038F:180C  74 14				je	loc_189			; Jump if equal
038F:180E  BB 4D9C				mov	bx,4D9Ch
038F:1811  00 00				add	[bx+si],al
038F:1813  37					aaa				; Ascii adjust
038F:1814  00 BB 081C				add	[bp+di+81Ch],bh
038F:1818  3C 05				cmp	al,5
038F:181A  74 06				je	loc_189			; Jump if equal
038F:181C  BB 0782				mov	bx,782h
038F:181F  BE 4F43				mov	si,4F43h
038F:1822			loc_189:
038F:1822  4D 53 50 45 43 3D			db	'MSPEC=C:\WINDOWS\SYSTEM32\COMMAN'
038F:1828  43 3A 5C 57 49 4E
038F:182E  44 4F 57 53 5C 53
038F:1834  59 53 54 45 4D 33
038F:183A  32 5C 43 4F 4D 4D
038F:1840  41 4E
038F:1842  44 2E 43 4F 4D 00			db	'D.COM', 0
038F:1848  41 4C 4C 55 53 45			db	'ALLUSERSPROFILE=C:\DOCUME~1\ALLU'
038F:184E  52 53 50 52 4F 46
038F:1854  49 4C 45 3D 43 3A
038F:185A  5C 44 4F 43 55 4D
038F:1860  45 7E 31 5C 41 4C
038F:1866  4C 55
038F:1868  53 45 7E 31 00			db	'SE~1', 0
038F:186D  41 50 50 44 41 54			db	'APPDATA=C:\DOCUME~1\9335~1\APPLI'
038F:1873  41 3D 43 3A 5C 44
038F:1879  4F 43 55 4D 45 7E
038F:187F  31 5C 39 33 33 35
038F:1885  7E 31 5C 41 50 50
038F:188B  4C 49
038F:188D  43 7E 31 00				db	'C~1', 0
038F:1891  43 4C 49 45 4E 54			db	'CLIENTNAME=Console', 0
038F:1897  4E 41 4D 45 3D 43
038F:189D  6F 6E 73 6F 6C 65
038F:18A3  00
038F:18A4  43 4F 4D 4D 4F 4E			db	'COMMONPROGRAMFILES=C:\PROGRA~1\C'
038F:18AA  50 52 4F 47 52 41
038F:18B0  4D 46 49 4C 45 53
038F:18B6  3D 43 3A 5C 50 52
038F:18BC  4F 47 52 41 7E 31
038F:18C2  5C 43
038F:18C4  4F 4D 4D 4F 4E 7E			db	'OMMON~1', 0
038F:18CA  31 00
038F:18CC  43 4F 4D 50 55 54			db	'COMPUTERNAME=DAN-350B93BA783', 0
038F:18D2  45 52 4E 41 4D 45
038F:18D8  3D 44 41 4E 2D 33
038F:18DE  35 30 42 39 33 42
038F:18E4  41 37 38 33 00
038F:18E9  46 50 5F 4E 4F 5F			db	'FP_NO_HOST_CHECK=NO', 0
038F:18EF  48 4F 53 54 5F 43
038F:18F5  48 45 43 4B 3D 4E
038F:18FB  4F 00
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 52

038F:18FD  48 4F 4D 45 44 52			db	'HOMEDRIVE=C:', 0
038F:1903  49 56 45 3D 43 3A
038F:1909  00
038F:190A  48 4F 4D 45 50 41			db	'HOMEPATH=\Documents and Settings'
038F:1910  54 48 3D 5C 44 6F
038F:1916  63 75 6D 65 6E 74
038F:191C  73 20 61 6E 64 20
038F:1922  53 65 74 74 69 6E
038F:1928  67 73
038F:192A  5C 5F				db	'\_'
038F:192C  FD					std				; Set direction flag
038F:192D  BF 2DF0				mov	di,2DF0h
038F:1930  F0> A1 A0A2		                           lock	mov	ax,word ptr ds:[0A0A2h]	; (038F:A0A2=33A1h)
038F:1934  FF A2 A052				jmp	word ptr [bp+si-5FAEh]	;*
038F:1938  00 4C 4F				add	[si+4Fh],cl
038F:193B  47 4F 4E 53 45 52	data_138	db	'GONSERVER=\\DAN-350B93BA783', 0
038F:1941  56 45 52 3D 5C 5C
038F:1947  44 41 4E 2D 33 35
038F:194D  30 42 39 33 42 41
038F:1953  37 38 33 00
038F:1957  4E 55 4D 42 45 52			db	'NUMBER_OF_PROCESSORS=1', 0
038F:195D  5F 4F 46 5F 50 52
038F:1963  4F 43 45 53 53 4F
038F:1969  52 53 3D 31 00
038F:196E  4F 53 3D 57 69 6E			db	'OS=Windows_NT', 0
038F:1974  64 6F 77 73 5F 4E
038F:197A  54 00
038F:197C  50 41 54 48 3D 43			db	'PATH=C:\WINDOWS\system32;C:\WIND'
038F:1982  3A 5C 57 49 4E 44
038F:1988  4F 57 53 5C 73 79
038F:198E  73 74 65 6D 33 32
038F:1994  3B 43 3A 5C 57 49
038F:199A  4E 44
038F:199C  4F 57 53 3B 43 3A			db	'OWS;C:\WINDOWS\System32\Wbem', 0
038F:19A2  5C 57 49 4E 44 4F
038F:19A8  57 53 5C 53 79 73
038F:19AE  74 65 6D 33 32 5C
038F:19B4  57 62 65 6D 00
038F:19B9  50 41 54 48 45 58			db	'PATHEXT=.COM;.EXE;.BAT;.CMD;.VBS'
038F:19BF  54 3D 2E 43 4F 4D
038F:19C5  3B 2E 45 58 45 3B
038F:19CB  2E 42 41 54 3B 2E
038F:19D1  43 4D 44 3B 2E 56
038F:19D7  42 53
038F:19D9  3B 2E 56 42 45 3B			db	';.VBE;.JS;.JSE;.WSF;.WSH', 0
038F:19DF  2E 4A 53 3B 2E 4A
038F:19E5  53 45 3B 2E 57 53
038F:19EB  46 3B 2E 57 53 48
038F:19F1  00
038F:19F2  50 52 4F 43 45 53			db	'PROCESSOR_ARCHITECTURE=x86', 0
038F:19F8  53 4F 52 5F 41 52
038F:19FE  43 48 49 54 45 43
038F:1A04  54 55 52 45 3D 78
038F:1A0A  38 36 00
038F:1A0D  50 52 4F 43 45 53			db	'PROCESSOR_IDENTIFIER=x86 Family '
038F:1A13  53 4F 52 5F 49 44
038F:1A19  45 4E 54 49 46 49
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 53

038F:1A1F  45 52 3D 78 38 36
038F:1A25  20 46 61 6D 69 6C
038F:1A2B  79 20
038F:1A2D  36 20 4D 6F 64 65			db	'6 Model 69 Stepping 1, GenuineIn'
038F:1A33  6C 20 36 39 20 53
038F:1A39  74 65 70 70 69 6E
038F:1A3F  67 20 31 2C 20 47
038F:1A45  65 6E 75 69 6E 65
038F:1A4B  49 6E
038F:1A4D  74 65 6C 00				db	'tel', 0
038F:1A51  50 52 4F 43 45 53			db	'PROCESSOR_LEVEL=6', 0
038F:1A57  53 4F 52 5F 4C 45
038F:1A5D  56 45 4C 3D 36 00
038F:1A63  50 52 4F 43 45 53			db	'PROCESSOR_REVISION=4501', 0
038F:1A69  53 4F 52 5F 52 45
038F:1A6F  56 49 53 49 4F 4E
038F:1A75  3D 34 35 30 31 00
038F:1A7B  50 52 4F 47 52 41			db	'PROGRAMFILES=C:\PROGRA~1', 0
038F:1A81  4D 46 49 4C 45 53
038F:1A87  3D 43 3A 5C 50 52
038F:1A8D  4F 47 52 41 7E 31
038F:1A93  00
038F:1A94  50 52 4F 4D 50 54			db	'PROMPT=$'
038F:1A9A  3D 24
038F:1A9C  50 24				db	'P$'
038F:1A9E  47 00				db	'G', 0
038F:1AA0  53 45 53 53 49 4F			db	'SESSIONNAME=Console', 0
038F:1AA6  4E 4E 41 4D 45 3D
038F:1AAC  43 6F 6E 73 6F 6C
038F:1AB2  65 00
038F:1AB4  53 59 53 54 45 4D			db	'SYSTEMDRIVE=C:', 0
038F:1ABA  44 52 49 56 45 3D
038F:1AC0  43 3A 00
038F:1AC3  53 59 53 54 45 4D			db	'SYSTEMROOT=C:\WINDOWS', 0
038F:1AC9  52 4F 4F 54 3D 43
038F:1ACF  3A 5C 57 49 4E 44
038F:1AD5  4F 57 53 00
038F:1AD9  54 45 4D 50 3D 43			db	'TEMP=C:\WINDOWS\TEMP', 0
038F:1ADF  3A 5C 57 49 4E 44
038F:1AE5  4F 57 53 5C 54 45
038F:1AEB  4D 50 00
038F:1AEE  54 4D 50 3D 43 3A			db	'TMP=C:\WINDOWS\TEMP', 0
038F:1AF4  5C 57 49 4E 44 4F
038F:1AFA  57 53 5C 54 45 4D
038F:1B00  50 00
038F:1B02  55 53 45 52 44 4F			db	'USERDOMAIN=DAN-350B93BA783', 0
038F:1B08  4D 41 49 4E 3D 44
038F:1B0E  41 4E 2D 33 35 30
038F:1B14  42 39 33 42 41 37
038F:1B1A  38 33 00
038F:1B1D  55 53 45 52 4E 41			db	'USERNAME=_'
038F:1B23  4D 45 3D 5F
038F:1B27  FD					std				; Set direction flag
038F:1B28  BF 2DF0				mov	di,2DF0h
038F:1B2B  F0> A1 A0A2		                           lock	mov	ax,word ptr ds:[0A0A2h]	; (038F:A0A2=33A1h)
038F:1B2F  FF A2 A052				jmp	word ptr [bp+si-5FAEh]	;*
038F:1B33  00 55 53				add	[di+53h],dl
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 54

038F:1B36  45 52 50 52 4F 46			db	'ERPROFILE=C:\DOCUME~1\9335~1', 0
038F:1B3C  49 4C 45 3D 43 3A
038F:1B42  5C 44 4F 43 55 4D
038F:1B48  45 7E 31 5C 39 33
038F:1B4E  33 35 7E 31 00
038F:1B53  42 4C 41 53 54 45			db	'BLASTER=A220 I5 D1 P330 T3'
038F:1B59  52 3D 41 32 32 30
038F:1B5F  20 49 35 20 44 31
038F:1B65  20 50 33 33 30 20
038F:1B6B  54 33
038F:1B6D  00 00				add	[bx+si],al
038F:1B6F  01 00				add	[bx+si],ax
038F:1B71  43					inc	bx
038F:1B72  3A 5C 57				cmp	bl,[si+57h]
038F:1B75  49					dec	cx
038F:1B76  4E					dec	si
038F:1B77  44					inc	sp
038F:1B78  4F					dec	di
038F:1B79  57					push	di
038F:1B7A  53					push	bx
038F:1B7B  5C					pop	sp
038F:1B7C  73 79				jnc	loc_191			; Jump if carry=0
038F:1B7E  73 74				jnc	loc_190			; Jump if carry=0
038F:1B80  65					db	65h
038F:1B81  6D					db	6Dh
038F:1B82  33 32				xor	si,[bp+si]
038F:1B84  5C					pop	sp
038F:1B85  4B					dec	bx
038F:1B86  42					inc	dx
038F:1B87  31 36 432E				xor	word ptr ds:[432Eh],si	; (038F:432E=0B906h)
038F:1B8B  4F					dec	di
038F:1B8C  4D					dec	bp
038F:1B8D  00 02				add	[bp+si],al
038F:1B8F  00 4D 49				add	[di+49h],cl
038F:1B92  05 017D				add	ax,17Dh
038F:1B95  21 04				and	[si],ax
038F:1B97  41					inc	cx
038F:1B98  4B					dec	bx
038F:1B99  42					inc	dx
038F:1B9A  31 36 0700				xor	data_86,si		; (038F:0700=0)
038F:1B9E  BE CD36				mov	si,0CD36h
038F:1BA1  20 C6				and	dh,al
038F:1BA3  06					push	es
038F:1BA4  00 9A FEF0				add	[bp+si-110h],bl
038F:1BA8  1D 25F0				sbb	ax,25F0h
038F:1BAB  06					push	es
038F:1BAC  B4 95				mov	ah,95h
038F:1BAE  4B					dec	bx
038F:1BAF  01 0E 5604				add	word ptr ds:[5604h],cx	; (038F:5604=9636h)
038F:1BB3  01 0E 0E04				add	data_115,cx		; (038F:0E04=4100h)
038F:1BB7  04 01				add	al,1
038F:1BB9  0013[FF]				db	19 dup (0FFh)
038F:1BCC  11 05				adc	[di],ax
038F:1BCE  E6 FF				out	0FFh,al			; port 0FFh ??I/O Non-standard
038F:1BD0  49					dec	cx
038F:1BD1  05 0014				add	ax,14h
038F:1BD4  18 00				sbb	[bx+si],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 55

038F:1BD6  49					dec	cx
038F:1BD7  05 FFFF				add	ax,0FFFFh
038F:1BDA  FF					db	0FFh
038F:1BDB  FF 00				inc	word ptr [bx+si]
038F:1BDD  00 00				add	[bx+si],al
038F:1BDF  00 05				add	[di],al
038F:1BE1  000F[00]				db	15 dup (0)
038F:1BF0  CD 21				int	21h			; ??INT Non-standard interrupt
038F:1BF2  CB					retf				; Return far
038F:1BF3  0009[00]				db	9 dup (0)
038F:1BFC  8B 05				mov	ax,[di]
038F:1BFE  0A 02				or	al,[bp+si]
038F:1C00  0E					push	cs
038F:1C01  0C 0A				or	al,0Ah
038F:1C03  02 14				add	dl,[si]
038F:1C05  0C 0A				or	al,0Ah
038F:1C07  02 00				add	al,[bx+si]
038F:1C09  00 00				add	[bx+si],al
038F:1C0B  00 AD 0A06				add	data_97[di],ch		; (038F:0A06=0)
038F:1C0F  02 AD 0A06				add	ch,data_97[di]		; (038F:0A06=0)
038F:1C13  02 A4 00F0				add	ah,byte ptr ds:[0F0h][si]	; (038F:00F0=0EBh)
038F:1C17  F0> 0008[00]		                           lock	db	8 dup (0)
038F:1C20  28 20 72 75 2C 38			db	'( ru,866,C:\WINDOWS\system32\KEY'
038F:1C26  36 36 2C 43 3A 5C
038F:1C2C  57 49 4E 44 4F 57
038F:1C32  53 5C 73 79 73 74
038F:1C38  65 6D 33 32 5C 4B
038F:1C3E  45 59
038F:1C40  42 4F 41 52 44 2E			db	'BOARD.SYS', 0Dh
038F:1C46  53 59 53 0D
038F:1C4A  0056[00]				db	86 dup (0)
038F:1CA0  E9 2210				jmp	$+2213h
038F:1CA3  0011[00]				db	17 dup (0)
038F:1CB4  10 00				adc	[bx+si],al
038F:1CB6  00					db	0
038F:1CB7  00 00				add	[bx+si],al
038F:1CB9  00 80 0017				add	byte ptr data_8+1[bx+si],al	; (038F:0017=0CEh)
038F:1CBD  18 00				sbb	[bx+si],al
038F:1CBF  97					xchg	di,ax
038F:1CC0  00 96 0000				add	[bp+0],dl
038F:1CC4  00 02				add	[bp+si],al
038F:1CC6  02 01				add	al,[bx+di]
038F:1CC8  00 5A 02				add	[bp+si+2],bl
038F:1CCB  56					push	si
038F:1CCC  04 98				add	al,98h
038F:1CCE  02 C9				add	cl,cl
038F:1CD0  02 DE				add	bl,dh
038F:1CD2  02 B2 8903				add	dh,[bp+si-76FDh]
038F:1CD6  04 17				add	al,17h
038F:1CD8  02 EC				add	ch,ah
038F:1CDA  01 1E 0C04				add	data_106,bx		; (038F:0C04=0C303h)
038F:1CDE  04 D4				add	al,0D4h
038F:1CE0  03 F0				add	si,ax
038F:1CE2  03 E9				add	bp,cx
038F:1CE4  01 E9				add	cx,bp
038F:1CE6  01 E9				add	cx,bp
038F:1CE8  01 2E 06F6				add	data_85,bp		; (038F:06F6=0)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 56

038F:1CEC  D5 0E		;*		aad	0Eh			; undocumented inst
038F:1CEC  D5 0E				db	0D5h, 0Eh
038F:1CEE  01 75 02				add	[di+2],si
038F:1CF1  F8					clc				; Clear carry flag
038F:1CF2  C3					retn
							                        ;* No entry point to code
038F:1CF3  1E					push	ds
038F:1CF4  06					push	es
038F:1CF5  50					push	ax
038F:1CF6  53					push	bx
038F:1CF7  0E					push	cs
038F:1CF8  1F					pop	ds
038F:1CF9  BB 0040				mov	bx,40h
038F:1CFC  8E C3				mov	es,bx
038F:1CFE  80 3E 06EF FF			cmp	byte ptr data_83+1,0FFh	; (038F:06EF=0)
038F:1D03  74 03				je	loc_192			; Jump if equal
038F:1D05  E9 00EC				jmp	loc_207			; (1DF4)
038F:1D08			loc_192:
038F:1D08  26: F6 06 0017 03			test	byte ptr es:[17h],3	; (0040:0017=0)
038F:1D0E  75 07				jnz	loc_193			; Jump if not zero
038F:1D10  80 26 0115 7F			and	byte ptr data_30+1,7Fh	; (038F:0115=0)
038F:1D15  EB 05				jmp	short loc_194		; (1D1C)
038F:1D17			loc_193:
038F:1D17  80 0E 0115 80			or	byte ptr data_30+1,80h	; (038F:0115=0)
038F:1D1C			loc_194:
038F:1D1C  26: F6 06 0017 04			test	byte ptr es:[17h],4	; (0040:0017=0)
038F:1D22  75 0F				jnz	loc_195			; Jump if not zero
038F:1D24  26: F6 06 0096 04			test	byte ptr es:[96h],4	; (0040:0096=10h)
038F:1D2A  75 07				jnz	loc_195			; Jump if not zero
038F:1D2C  80 26 0115 BF			and	byte ptr data_30+1,0BFh	; (038F:0115=0)
038F:1D31  EB 05				jmp	short loc_196		; (1D38)
038F:1D33			loc_195:
038F:1D33  80 0E 0115 40			or	byte ptr data_30+1,40h	; (038F:0115=0) '@'
038F:1D38			loc_196:
038F:1D38  26: F6 06 0017 08			test	byte ptr es:[17h],8	; (0040:0017=0)
038F:1D3E  75 0F				jnz	loc_197			; Jump if not zero
038F:1D40  26: F6 06 0096 08			test	byte ptr es:[96h],8	; (0040:0096=10h)
038F:1D46  75 07				jnz	loc_197			; Jump if not zero
038F:1D48  80 26 0115 DF			and	byte ptr data_30+1,0DFh	; (038F:0115=0)
038F:1D4D  EB 05				jmp	short loc_198		; (1D54)
038F:1D4F			loc_197:
038F:1D4F  80 0E 0115 20			or	byte ptr data_30+1,20h	; (038F:0115=0) ' '
038F:1D54			loc_198:
038F:1D54  B9 0004				mov	cx,4
038F:1D57  33 F6				xor	si,si			; Zero register
038F:1D59  33 FF				xor	di,di			; Zero register

038F:1D5B			locloop_199:
038F:1D5B  8B 9C 011B				mov	bx,word ptr data_34+3[si]	; (038F:011B=0E800h)
038F:1D5F  26: 8A 07				mov	al,es:[bx]
038F:1D62  88 85 0111				mov	byte ptr data_28+1[di],al	; (038F:0111=42h)
038F:1D66  47					inc	di
038F:1D67  46					inc	si
038F:1D68  46					inc	si
038F:1D69  E2 F0				loop	locloop_199		; Loop if cx > 0

038F:1D6B  C6 06 011A 00			mov	byte ptr data_34+2,0	; (038F:011A=0)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 57

038F:1D70  8B 36 0EE7				mov	si,data_124		; (038F:0EE7=0ECABh)
038F:1D74  8D 74 04				lea	si,[si+4]		; Load effective addr
038F:1D77			loc_200:
038F:1D77  32 FF				xor	bh,bh			; Zero register
038F:1D79  8A 1C				mov	bl,[si]
038F:1D7B  D0 EB				shr	bl,1			; Shift w/zeros fill
038F:1D7D  D0 EB				shr	bl,1			; Shift w/zeros fill
038F:1D7F  D0 EB				shr	bl,1			; Shift w/zeros fill
038F:1D81  D0 EB				shr	bl,1			; Shift w/zeros fill
038F:1D83  D0 E3				shl	bl,1			; Shift w/zeros fill
038F:1D85  FF A7 0129				jmp	word ptr data_44+1[bx]	;*(038F:0129=4B02h)
038F:1D89  E9 030C				jmp	loc_249			; (2098)
							                        ;* No entry point to code
038F:1D8C  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1D8F  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1D93  75 19				jne	loc_202			; Jump if not equal
038F:1D95  8B 44 01				mov	ax,[si+1]
038F:1D98  85 06 0ED1				test	ax,word ptr ds:[0ED1h]	; (038F:0ED1=0AD20h)
038F:1D9C  75 07				jnz	loc_201			; Jump if not zero
038F:1D9E  C6 06 0127 01			mov	byte ptr data_40+3,1	; (038F:0127=6)
038F:1DA3  EB 09				jmp	short loc_202		; (1DAE)
038F:1DA5			loc_201:
038F:1DA5  FE 06 0126				inc	byte ptr data_40+2	; (038F:0126=0B4h)
038F:1DA9  C6 06 0127 00			mov	byte ptr data_40+3,0	; (038F:0127=6)
038F:1DAE			loc_202:
038F:1DAE  FE 06 0125				inc	byte ptr data_40+1	; (038F:0125=10h)
038F:1DB2  46					inc	si
038F:1DB3  46					inc	si
038F:1DB4  46					inc	si
038F:1DB5  EB C0				jmp	short loc_200		; (1D77)
							                        ;* No entry point to code
038F:1DB7  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1DBA  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1DBE  75 16				jne	loc_203			; Jump if not equal
038F:1DC0  8B 3E 0EE1				mov	di,word ptr ds:[0EE1h]	; (038F:0EE1=0AFA5h)
038F:1DC4  8A 44 01				mov	al,[si+1]
038F:1DC7  E8 0010				call	sub_11			; (1DDA)
038F:1DCA  72 0A				jc	loc_203			; Jump if carry Set
038F:1DCC  8B 3E 0EE9				mov	di,data_125		; (038F:0EE9=0EBADh)
038F:1DD0  8A 44 01				mov	al,[si+1]
038F:1DD3  E8 0004				call	sub_11			; (1DDA)
038F:1DD6			loc_203:
038F:1DD6  46					inc	si
038F:1DD7  46					inc	si
038F:1DD8  EB 9D				jmp	short loc_200		; (1D77)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_11		proc	near
038F:1DDA  F8					clc				; Clear carry flag
038F:1DDB  8D 7D 04				lea	di,[di+4]		; Load effective addr
038F:1DDE			loc_204:
038F:1DDE  83 3D 00				cmp	word ptr [di],0
038F:1DE1  74 10				je	loc_206			; Jump if equal
038F:1DE3  3A 45 02				cmp	al,[di+2]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 58

038F:1DE6  74 04				je	loc_205			; Jump if equal
038F:1DE8  03 3D				add	di,[di]
038F:1DEA  EB F2				jmp	short loc_204		; (1DDE)
038F:1DEC			loc_205:
038F:1DEC  8B 45 05				mov	ax,[di+5]
038F:1DEF  E8 0A57				call	sub_14			; (2849)
038F:1DF2  F9					stc				; Set carry flag
038F:1DF3			loc_206:
038F:1DF3  C3					retn
				sub_11		endp

038F:1DF4			loc_207:
038F:1DF4  F8					clc				; Clear carry flag
038F:1DF5  5B					pop	bx
038F:1DF6  58					pop	ax
038F:1DF7  07					pop	es
038F:1DF8  1F					pop	ds
038F:1DF9  C3					retn
							                        ;* No entry point to code
038F:1DFA  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1DFD  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E01  75 2C				jne	loc_211			; Jump if not equal
038F:1E03  8A 1C				mov	bl,[si]
038F:1E05  80 E3 07				and	bl,7
038F:1E08  32 FF				xor	bh,bh			; Zero register
038F:1E0A  8A 87 0111				mov	al,byte ptr data_28+1[bx]	; (038F:0111=42h)
038F:1E0E  F6 04 08				test	byte ptr [si],8
038F:1E11  75 07				jnz	loc_208			; Jump if not zero
038F:1E13  84 44 01				test	al,[si+1]
038F:1E16  75 0E				jnz	loc_210			; Jump if not zero
038F:1E18  74 05				jz	loc_209			; Jump if zero
038F:1E1A			loc_208:
038F:1E1A  84 44 01				test	al,[si+1]
038F:1E1D  74 07				jz	loc_210			; Jump if zero
038F:1E1F			loc_209:
038F:1E1F  C6 06 0127 01			mov	byte ptr data_40+3,1	; (038F:0127=6)
038F:1E24  EB 09				jmp	short loc_211		; (1E2F)
038F:1E26			loc_210:
038F:1E26  FE 06 0126				inc	byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E2A  C6 06 0127 00			mov	byte ptr data_40+3,0	; (038F:0127=6)
038F:1E2F			loc_211:
038F:1E2F  FE 06 0125				inc	byte ptr data_40+1	; (038F:0125=10h)
038F:1E33  46					inc	si
038F:1E34  46					inc	si
038F:1E35  E9 FF3F				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1E38  A0 0126				mov	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E3B  3A 06 0125				cmp	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1E3F  75 06				jne	loc_212			; Jump if not equal
038F:1E41  FE 0E 0126				dec	byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E45  EB 1E				jmp	short loc_214		; (1E65)
038F:1E47			loc_212:
038F:1E47  80 3E 0127 01			cmp	byte ptr data_40+3,1	; (038F:0127=6)
038F:1E4C  75 17				jne	loc_214			; Jump if not equal
038F:1E4E  FE 0E 0125				dec	byte ptr data_40+1	; (038F:0125=10h)
038F:1E52  3A 06 0125				cmp	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1E56  75 09				jne	loc_213			; Jump if not equal
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 59

038F:1E58  FE 06 0126				inc	byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E5C  C6 06 0127 00			mov	byte ptr data_40+3,0	; (038F:0127=6)
038F:1E61			loc_213:
038F:1E61  FE 06 0125				inc	byte ptr data_40+1	; (038F:0125=10h)
038F:1E65			loc_214:
038F:1E65  46					inc	si
038F:1E66  E9 FF0E				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1E69  A0 0126				mov	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E6C  3A 06 0125				cmp	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1E70  75 04				jne	loc_215			; Jump if not equal
038F:1E72  FE 0E 0126				dec	byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E76			loc_215:
038F:1E76  FE 0E 0125				dec	byte ptr data_40+1	; (038F:0125=10h)
038F:1E7A  46					inc	si
038F:1E7B  E9 FEF9				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1E7E  A0 0126				mov	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1E81  3A 06 0125				cmp	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1E85  75 27				jne	loc_217			; Jump if not equal
038F:1E87  8B 3E 0EE1				mov	di,word ptr ds:[0EE1h]	; (038F:0EE1=0AFA5h)
038F:1E8B  8A 44 01				mov	al,[si+1]
038F:1E8E  E8 0022				call	sub_12			; (1EB3)
038F:1E91  72 0C				jc	loc_216			; Jump if carry Set
038F:1E93  8B 3E 0EE9				mov	di,data_125		; (038F:0EE9=0EBADh)
038F:1E97  8A 44 01				mov	al,[si+1]
038F:1E9A  E8 0016				call	sub_12			; (1EB3)
038F:1E9D  73 0F				jnc	loc_217			; Jump if carry=0
038F:1E9F			loc_216:
038F:1E9F  80 0E 0115 08			or	byte ptr data_30+1,8	; (038F:0115=0)
038F:1EA4  F6 06 011A 80			test	byte ptr data_34+2,80h	; (038F:011A=0)
038F:1EA9  74 03				jz	loc_217			; Jump if zero
038F:1EAB  E9 01EC				jmp	loc_250			; (209A)
038F:1EAE			loc_217:
038F:1EAE  46					inc	si
038F:1EAF  46					inc	si
038F:1EB0  E9 FEC4				jmp	loc_200			; (1D77)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_12		proc	near
038F:1EB3  F8					clc				; Clear carry flag
038F:1EB4  8D 7D 04				lea	di,[di+4]		; Load effective addr
038F:1EB7			loc_218:
038F:1EB7  83 3D 00				cmp	word ptr [di],0
038F:1EBA  74 1C				je	loc_221			; Jump if equal
038F:1EBC  3A 45 02				cmp	al,[di+2]
038F:1EBF  74 04				je	loc_219			; Jump if equal
038F:1EC1  03 3D				add	di,[di]
038F:1EC3  EB F2				jmp	short loc_218		; (1EB7)
038F:1EC5			loc_219:
038F:1EC5  80 26 0115 F7			and	byte ptr data_30+1,0F7h	; (038F:0115=0)
038F:1ECA  56					push	si
038F:1ECB  8D 75 07				lea	si,[di+7]		; Load effective addr
038F:1ECE  89 36 0123				mov	word ptr data_38+3,si	; (038F:0123=0EB90h)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 60

038F:1ED2  A0 06EB				mov	al,data_82		; (038F:06EB=0)
038F:1ED5  EB 02				jmp	short loc_222		; (1ED9)
038F:1ED7			loc_220:
038F:1ED7  5E					pop	si
038F:1ED8			loc_221:
038F:1ED8  C3					retn
038F:1ED9			loc_222:
038F:1ED9  8B 36 0123				mov	si,word ptr data_38+3	; (038F:0123=0EB90h)
038F:1EDD  83 3C 00				cmp	word ptr [si],0
038F:1EE0  75 02				jne	loc_223			; Jump if not equal
038F:1EE2  EB F3				jmp	short loc_220		; (1ED7)
038F:1EE4			loc_223:
038F:1EE4  8A 54 02				mov	dl,[si+2]
038F:1EE7  8B 1C				mov	bx,[si]
038F:1EE9  03 DE				add	bx,si
038F:1EEB  89 1E 0123				mov	word ptr data_38+3,bx	; (038F:0123=0EB90h)
038F:1EEF  F6 C2 40				test	dl,40h			; '@'
038F:1EF2  74 2C				jz	loc_226			; Jump if zero
038F:1EF4  32 ED				xor	ch,ch			; Zero register
038F:1EF6  8A 4C 03				mov	cl,[si+3]
038F:1EF9  BB 0003				mov	bx,3
038F:1EFC  F6 C2 A0				test	dl,0A0h
038F:1EFF  74 03				jz	locloop_224		; Jump if zero
038F:1F01  BB 0002				mov	bx,2

038F:1F04			locloop_224:
038F:1F04  E3 D3				jcxz	loc_222			; Jump if cx=0
038F:1F06  3A 44 04				cmp	al,[si+4]
038F:1F09  74 06				je	loc_225			; Jump if equal
038F:1F0B  03 F3				add	si,bx
038F:1F0D  E2 F5				loop	locloop_224		; Loop if cx > 0

038F:1F0F  EB C8				jmp	short loc_222		; (1ED9)
038F:1F11			loc_225:
038F:1F11  8A E0				mov	ah,al
038F:1F13  8A 44 05				mov	al,[si+5]
038F:1F16  F6 C2 A0				test	dl,0A0h
038F:1F19  75 2A				jnz	loc_228			; Jump if not zero
038F:1F1B  8A 64 06				mov	ah,[si+6]
038F:1F1E  EB 25				jmp	short loc_228		; (1F45)
038F:1F20			loc_226:
038F:1F20  3A 44 03				cmp	al,[si+3]
038F:1F23  72 B4				jb	loc_222			; Jump if below
038F:1F25  3A 44 04				cmp	al,[si+4]
038F:1F28  77 AF				ja	loc_222			; Jump if above
038F:1F2A  2A 44 03				sub	al,[si+3]
038F:1F2D  F6 C2 A0				test	dl,0A0h
038F:1F30  74 0A				jz	loc_227			; Jump if zero
038F:1F32  8D 5C 05				lea	bx,[si+5]		; Load effective addr
038F:1F35  D7					xlat				; al=[al+[bx]] table
038F:1F36  8A 26 06EB				mov	ah,data_82		; (038F:06EB=0)
038F:1F3A  EB 09				jmp	short loc_228		; (1F45)
038F:1F3C			loc_227:
038F:1F3C  B3 02				mov	bl,2
038F:1F3E  F6 E3				mul	bl			; ax = reg * al
038F:1F40  8B D8				mov	bx,ax
038F:1F42  8B 40 05				mov	ax,[bx+si+5]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 61

038F:1F45			loc_228:
038F:1F45  F6 C2 20				test	dl,20h			; ' '
038F:1F48  74 02				jz	loc_229			; Jump if zero
038F:1F4A  32 E4				xor	ah,ah			; Zero register
038F:1F4C			loc_229:
038F:1F4C  E8 08FA				call	sub_14			; (2849)
038F:1F4F  F9					stc				; Set carry flag
038F:1F50  EB 85				jmp	short loc_220		; (1ED7)
				sub_12		endp

							                        ;* No entry point to code
038F:1F52  A0 0126				mov	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1F55  3A 06 0125				cmp	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1F59  75 14				jne	loc_231			; Jump if not equal
038F:1F5B  8A 44 01				mov	al,[si+1]
038F:1F5E  F6 04 08				test	byte ptr [si],8
038F:1F61  75 06				jnz	loc_230			; Jump if not zero
038F:1F63  08 06 011A				or	byte ptr data_34+2,al	; (038F:011A=0)
038F:1F67  EB 06				jmp	short loc_231		; (1F6F)
038F:1F69			loc_230:
038F:1F69  F6 D0				not	al
038F:1F6B  20 06 011A				and	byte ptr data_34+2,al	; (038F:011A=0)
038F:1F6F			loc_231:
038F:1F6F  46					inc	si
038F:1F70  46					inc	si
038F:1F71  E9 FE03				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1F74  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1F77  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1F7B  75 0F				jne	loc_232			; Jump if not equal
038F:1F7D  C6 06 0116 00			mov	byte ptr data_30+2,0	; (038F:0116=0)
038F:1F82  C6 06 0117 00			mov	byte ptr data_30+3,0	; (038F:0117=0)
038F:1F87  C6 06 06EE 00			mov	byte ptr data_83,0	; (038F:06EE=0)
038F:1F8C			loc_232:
038F:1F8C  46					inc	si
038F:1F8D  E9 FDE7				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1F90  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1F93  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1F97  75 0F				jne	loc_233			; Jump if not equal
038F:1F99  C6 06 0116 01			mov	byte ptr data_30+2,1	; (038F:0116=0)
038F:1F9E  C6 06 0117 00			mov	byte ptr data_30+3,0	; (038F:0117=0)
038F:1FA3  C6 06 06EE 01			mov	byte ptr data_83,1	; (038F:06EE=0)
038F:1FA8			loc_233:
038F:1FA8  46					inc	si
038F:1FA9  E9 FDCB				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1FAC  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1FAF  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1FB3  75 05				jne	loc_234			; Jump if not equal
038F:1FB5  C6 06 06EA 01			mov	data_81,1		; (038F:06EA=0)
038F:1FBA			loc_234:
038F:1FBA  46					inc	si
038F:1FBB  E9 FDB9				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1FBE  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1FC1  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 62

038F:1FC5  75 29				jne	loc_238			; Jump if not equal
038F:1FC7  8A 1C				mov	bl,[si]
038F:1FC9  80 E3 0F				and	bl,0Fh
038F:1FCC  0A DB				or	bl,bl			; Zero ?
038F:1FCE  74 13				jz	loc_237			; Jump if zero
038F:1FD0  80 FB 01				cmp	bl,1
038F:1FD3  75 03				jne	loc_235			; Jump if not equal
038F:1FD5  E9 00C2				jmp	loc_250			; (209A)
038F:1FD8			loc_235:
038F:1FD8  80 FB 02				cmp	bl,2
038F:1FDB  75 03				jne	loc_236			; Jump if not equal
038F:1FDD  E9 FE14				jmp	loc_207			; (1DF4)
038F:1FE0			loc_236:
038F:1FE0  E9 00B5				jmp	loc_249			; (2098)
038F:1FE3			loc_237:
038F:1FE3  03 74 01				add	si,[si+1]
038F:1FE6  C6 06 0126 00			mov	byte ptr data_40+2,0	; (038F:0126=0B4h)
038F:1FEB  C6 06 0125 00			mov	byte ptr data_40+1,0	; (038F:0125=10h)
038F:1FF0			loc_238:
038F:1FF0  83 C6 03				add	si,3
038F:1FF3  E9 FD81				jmp	loc_200			; (1D77)
							                        ;* No entry point to code
038F:1FF6  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:1FF9  3A 06 0126				cmp	al,byte ptr data_40+2	; (038F:0126=0B4h)
038F:1FFD  75 25				jne	loc_241			; Jump if not equal
038F:1FFF  8A 1C				mov	bl,[si]
038F:2001  80 E3 07				and	bl,7
038F:2004  32 FF				xor	bh,bh			; Zero register
038F:2006  8A 87 0111				mov	al,byte ptr data_28+1[bx]	; (038F:0111=42h)
038F:200A  F6 04 08				test	byte ptr [si],8
038F:200D  75 07				jnz	loc_239			; Jump if not zero
038F:200F  84 44 01				test	al,[si+1]
038F:2012  75 10				jnz	loc_241			; Jump if not zero
038F:2014  74 05				jz	loc_240			; Jump if zero
038F:2016			loc_239:
038F:2016  84 44 01				test	al,[si+1]
038F:2019  74 09				jz	loc_241			; Jump if zero
038F:201B			loc_240:
038F:201B  C6 06 0127 01			mov	byte ptr data_40+3,1	; (038F:0127=6)
038F:2020  FE 0E 0126				dec	byte ptr data_40+2	; (038F:0126=0B4h)
038F:2024			loc_241:
038F:2024  46					inc	si
038F:2025  46					inc	si
038F:2026  E9 FD4E				jmp	loc_200			; (1D77)
038F:2029  A0 0125				mov	al,byte ptr data_40+1	; (038F:0125=10h)
038F:202C  063A			data_150	dw	63Ah
038F:202E  26: 01 75 61				add	es:[di+61h],si
038F:2032  8B 3E 0EE9				mov	di,data_125		; (038F:0EE9=0EBADh)
038F:2036  8A 44 01				mov	al,[si+1]
038F:2039  8D 7D 04				lea	di,[di+4]		; Load effective addr
038F:203C			loc_242:
038F:203C  83 3D 00				cmp	word ptr [di],0
038F:203F  74 52				je	loc_248			; Jump if equal
038F:2041  3A 45 02				cmp	al,[di+2]
038F:2044  74 04				je	loc_244			; Jump if equal
038F:2046  03 3D				add	di,[di]
038F:2048  EB F2				jmp	short loc_242		; (203C)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 63

038F:204A			loc_244:
038F:204A  80 26 0115 F7			and	byte ptr data_30+1,0F7h	; (038F:0115=0)
038F:204F  56					push	si
038F:2050  8D 75 07				lea	si,[di+7]		; Load effective addr
038F:2053  A0 06EB				mov	al,data_82		; (038F:06EB=0)
038F:2056  8B 0C				mov	cx,[si]
038F:2058  E3 38				jcxz	loc_247			; Jump if cx=0
038F:205A  46					inc	si
038F:205B  46					inc	si

038F:205C			locloop_245:
038F:205C  3A 04				cmp	al,[si]
038F:205E  74 07				je	loc_246			; Jump if equal
038F:2060  83 C6 03				add	si,3
038F:2063  E2 F7				loop	locloop_245		; Loop if cx > 0

038F:2065  EB 2B				jmp	short loc_247		; (2092)
038F:2067			loc_246:
038F:2067  C6 06 0116 00			mov	byte ptr data_30+2,0	; (038F:0116=0)
038F:206C  C6 06 0117 00			mov	byte ptr data_30+3,0	; (038F:0117=0)
038F:2071  8A 5C 01				mov	bl,[si+1]
038F:2074  32 FF				xor	bh,bh			; Zero register
038F:2076  8A 44 02				mov	al,[si+2]
038F:2079  08 87 0111				or	byte ptr data_28+1[bx],al	; (038F:0111=42h)
038F:207D  80 0E 0115 08			or	byte ptr data_30+1,8	; (038F:0115=0)
038F:2082  A0 0116				mov	al,byte ptr data_30+2	; (038F:0116=0)
038F:2085  A2 06EE				mov	byte ptr data_83,al	; (038F:06EE=0)
038F:2088  F6 06 011A 80			test	byte ptr data_34+2,80h	; (038F:011A=0)
038F:208D  74 03				jz	loc_247			; Jump if zero
038F:208F  5E					pop	si
038F:2090  EB 08				jmp	short loc_250		; (209A)
038F:2092			loc_247:
038F:2092  5E					pop	si
038F:2093			loc_248:
038F:2093  46					inc	si
038F:2094  46					inc	si
038F:2095  E9 FCDF				jmp	loc_200			; (1D77)
038F:2098			loc_249:
038F:2098  EB 00				jmp	short loc_250		; (209A)
038F:209A			loc_250:
038F:209A  C6 06 0128 00			mov	byte ptr data_44,0	; (038F:0128=0Ah)
038F:209F  F9					stc				; Set carry flag
038F:20A0  5B			data_151	db	5Bh			; Data table (indexed access)
038F:20A1  58					pop	ax
038F:20A2  07					pop	es
038F:20A3  1F					pop	ds
038F:20A4  C3					retn
038F:20A5  0000			data_152	dw	0			; Data table (indexed access)
038F:20A7  00 00 00 00 00 00			db	0, 0, 0, 0, 0, 0
038F:20AD  00			data_154	db	0
038F:20AE  0000			data_155	dw	0
038F:20B0  52					push	dx
038F:20B1  3A 45 46				cmp	al,[di+46h]
038F:20B4  38 1D				cmp	[di],bl
038F:20B6  2A 36 4080				sub	dh,byte ptr ds:[4080h]	; (038F:4080=16h)
038F:20BA  20 10				and	[bx+si],dl
038F:20BC  08 04				or	[si],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 64

038F:20BE  02 01				add	al,[bx+di]
038F:20C0  52					push	dx
038F:20C1  4F					dec	di
038F:20C2  50					push	ax
038F:20C3  51					push	cx
038F:20C4  4B					dec	bx
038F:20C5  4C					dec	sp
038F:20C6  4D					dec	bp
038F:20C7			loc_252:
038F:20C7  47					inc	di
038F:20C8  48					dec	ax
038F:20C9  49					dec	cx
038F:20CA  10 11				adc	[bx+di],dl
038F:20CC  12 13				adc	dl,[bp+di]
038F:20CE  14 15				adc	al,15h
038F:20D0  16					push	ss
038F:20D1  17					pop	ss
038F:20D2  18 19				sbb	[bx+di],bl
038F:20D4  1E					push	ds
038F:20D5  1F					pop	ds
038F:20D6  20 21				and	[bx+di],ah
038F:20D8  22 23				and	ah,[bp+di]
038F:20DA  24 25				and	al,25h			; '%'

038F:20DC			locloop_253:
038F:20DC  26					db	26h
038F:20DD  2C 2D				sub	al,2Dh			; '-'
038F:20DF  2E					db	2Eh
038F:20E0  2F					das				; Decimal adjust
038F:20E1  30 31				xor	[bx+di],dh
038F:20E3  32 FF				xor	bh,bh			; Zero register
038F:20E5  FF					db	0FFh
038F:20E6  FF					db	0FFh
038F:20E7  FF 8B FF8C				dec	word ptr [bp+di-74h]
038F:20EB  EB DA				jmp	short loc_252		; (20C7)
038F:20ED  DB					db	0DBh
038F:20EE			loc_254:
038F:20EE  DC					db	0DCh
038F:20EF  FF			data_156	db	0FFh
038F:20F0  FF					db	0FFh
038F:20F1			loc_255:
038F:20F1  FF					db	0FFh
038F:20F2  FF					db	0FFh
038F:20F3  FF					db	0FFh
038F:20F4			loc_256:
038F:20F4  DD					db	0DDh
038F:20F5  DE					db	0DEh
038F:20F6  DF					db	0DFh
038F:20F7  E2 E3				loop	locloop_253		; Loop if cx > 0

038F:20F9  E4 E5				in	al,0E5h			; port 0E5h ??I/O Non-standard
038F:20FB  E6 E7				out	0E7h,al			; port 0E7h ??I/O Non-standard
038F:20FD  FF F3		;*		push	bx
038F:20FD  FF F3				db	0FFh,0F3h
038F:20FF  0008[FF]				db	8 dup (0FFh)
038F:2107  FD					std				; Set direction flag
038F:2108  0008[FF]				db	8 dup (0FFh)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 65

038F:2110  1B FF				sbb	di,di
038F:2112  00 FF				add	bh,bh
038F:2114  FF					db	0FFh
038F:2115  FF 1E FFFF				call	dword ptr ds:[0FFFFh]	; (038F:FFFF)
038F:2119  FF					db	0FFh
038F:211A  FF 1F				call	dword ptr [bx]		;*
038F:211C  FF					db	0FFh
038F:211D  7F 94		;*		jg	loc_251			;*Jump if >
038F:211D  7F 94				db	 7Fh, 94h
038F:211F  11 17				adc	[bx],dx
038F:2121  05 1412				add	ax,1412h
038F:2124  19 15				sbb	[di],dx
038F:2126  09 0F				or	[bx],cx
038F:2128  10 1B				adc	[bp+di],bl
038F:212A  1D FF0A				sbb	ax,0FF0Ah
038F:212D  01 13				add	[bp+di],dx
038F:212F  04 06				add	al,6
038F:2131  07					pop	es
038F:2132  08 0A				or	[bp+si],cl
038F:2134  0B 0C				or	cx,[si]
038F:2136  FF					db	0FFh
038F:2137  FF					db	0FFh
038F:2138  FF					db	0FFh
038F:2139  FF 1C				call	dword ptr [si]		;*
038F:213B  1A 18				sbb	bl,[bx+si]
038F:213D  03 16 0E02				add	dx,data_114		; (038F:0E02=0)
038F:2141  0D FFFF				or	ax,0FFFFh
038F:2144  FF					db	0FFh
038F:2145  FF 96 20FF				call	word ptr [bp+20FFh]	;*
038F:2149  FF 5E 5F				call	dword ptr [bp+5Fh]	;*
038F:214C  60					db	60h
038F:214D  61					db	61h
038F:214E  62					db	62h
038F:214F  63					db	63h
038F:2150  64					db	64h
038F:2151  65					db	65h
038F:2152  66					db	66h
038F:2153  67					db	67h
038F:2154  FF					db	0FFh
038F:2155  FF 77 8D				push	word ptr [bx-73h]
038F:2158  84 8E 8F73				test	cl,[bp-708Dh]
038F:215C  74 90				jz	loc_254			; Jump if zero
038F:215E  75 91				jnz	loc_255			; Jump if not zero
038F:2160  76 92				jbe	loc_256			; Jump if below or =
038F:2162  93					xchg	bx,ax
038F:2163  FF					db	0FFh
038F:2164  FF					db	0FFh
038F:2165  FF 89 FF8A				dec	word ptr ds:[0FF8Ah][bx+di]	; (038F:FF8A=0B934h)
038F:2169  EA FFD0:CFCE		;*		jmp	far ptr loc_473		;*(FFD0:CFCE)
038F:2169  EA					db	0EAh
038F:216A  CFCE FFD0				dw	0CFCEh, 0FFD0h
038F:216E  FF					db	0FFh
038F:216F  FF					db	0FFh
038F:2170  FF					db	0FFh
							                        ;* No entry point to code
038F:2171  FF D1				call	cx			;*
038F:2173  D2 D3				rcl	bl,cl			; Rotate thru carry
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 66

038F:2175  D4 D5		;*		aam	0D5h			; undocumented inst
038F:2175  D4 D5				db	0D4h,0D5h
038F:2177  D6					db	0D6h
038F:2178  D7					xlat				; al=[al+[bx]] table
038F:2179  D8					db	0D8h
038F:217A  D9					db	0D9h
038F:217B  FF F2		;*		push	dx
038F:217B  FF F2				db	0FFh,0F2h
038F:217D  0008[FF]				db	8 dup (0FFh)
038F:2185  FC					cld				; Clear direction
038F:2186  0008[FF]				db	8 dup (0FFh)
038F:218E  1B 31				sbb	si,[bx+di]
038F:2190  32 33				xor	dh,[bp+di]
038F:2192  34 35				xor	al,35h			; '5'
038F:2194  36					db	36h
038F:2195  37					aaa				; Ascii adjust
038F:2196  38 39				cmp	[bx+di],bh
038F:2198  30 2D				xor	[di],ch
038F:219A  3D 0908				cmp	ax,908h
038F:219D  71 77				jno	loc_260			; Jump if not overflw
038F:219F  65					db	65h
038F:21A0  72 74				jc	loc_260			; Jump if carry Set
038F:21A2  79 75				jns	loc_261			; Jump if not sign
038F:21A4  69					db	69h
038F:21A5  6F					db	6Fh
038F:21A6  70 5B				jo	loc_258			; Jump if overflow=1
038F:21A8  5D					pop	bp
038F:21A9  0D 61FF				or	ax,61FFh
038F:21AC  73 64				jnc	loc_259			; Jump if carry=0
038F:21AE  66					db	66h
038F:21AF  67					db	67h
038F:21B0  68					db	68h
038F:21B1  6A					db	6Ah
038F:21B2  6B					db	6Bh
038F:21B3  6C					db	6Ch
038F:21B4  3B 27				cmp	sp,[bx]
038F:21B6  60					db	60h
038F:21B7  FF 5C 7A				call	dword ptr [si+7Ah]	;*
038F:21BA  78 63				js	loc_262			; Jump if sign=1
038F:21BC  76 62				jbe	loc_263			; Jump if below or =
038F:21BE  6E					db	6Eh
038F:21BF  6D					db	6Dh
038F:21C0  2C 2E				sub	al,2Eh			; '.'
038F:21C2  2F					das				; Decimal adjust
038F:21C3  FF 2A				jmp	dword ptr [bp+si]	;*
038F:21C5  FF 20				jmp	word ptr [bx+si]	;*
038F:21C7  5C					pop	sp
038F:21C8  3B 3C				cmp	di,[si]
038F:21CA  3D 3F3E				cmp	ax,3F3Eh
038F:21CD  40					inc	ax
038F:21CE  41					inc	cx
038F:21CF  42					inc	dx
038F:21D0  43					inc	bx
038F:21D1  44					inc	sp
038F:21D2  FF					db	0FFh
038F:21D3  FF 47 48				inc	word ptr [bx+48h]
038F:21D6  49					dec	cx
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 67

038F:21D7  FF 4B FF				dec	word ptr [bp+di-1]
038F:21DA  4D					dec	bp
038F:21DB  FF 4F 50				dec	word ptr [bx+50h]
038F:21DE  51					push	cx
038F:21DF  52					push	dx
038F:21E0  53					push	bx
038F:21E1  FF					db	0FFh
038F:21E2  FF 5C 85				call	dword ptr [si-7Bh]	;*
038F:21E5  86 FF				xchg	bh,bh
038F:21E7  E8 B7B6				call	$-4847h
038F:21EA			loc_257:
038F:21EA  B8 FFFF				mov	ax,0FFFFh
038F:21ED  FF					db	0FFh
038F:21EE  FF					db	0FFh
038F:21EF  FF					db	0FFh
038F:21F0  B9 BBBA				mov	cx,0BBBAh
038F:21F3  BC BEBD				mov	sp,0BEBDh
038F:21F6  BF C1C0				mov	di,0C1C0h
038F:21F9  FF F0		;*		push	ax
038F:21F9  FF F0				db	0FFh,0F0h
038F:21FB  0008[FF]				db	8 dup (0FFh)
038F:2203			loc_258:
038F:2203  FB					sti				; Enable interrupts
038F:2204  0008[FF]				db	8 dup (0FFh)
038F:220C  1B 21				sbb	sp,[bx+di]
038F:220E  40					inc	ax
038F:220F  23 24				and	sp,[si]
038F:2211  25 265E				and	ax,265Eh
038F:2214  2A 28				sub	ch,[bx+si]
038F:2216			loc_260:
038F:2216  29 5F 2B				sub	[bx+2Bh],bx
038F:2219			loc_261:
038F:2219  08 00				or	[bx+si],al
038F:221B  51					push	cx
038F:221C  57					push	di
038F:221D  45					inc	bp
038F:221E  52					push	dx
038F:221F			loc_262:
038F:221F  54					push	sp
038F:2220			loc_263:
038F:2220  59					pop	cx
038F:2221  55					push	bp
038F:2222  49					dec	cx
038F:2223  4F					dec	di
038F:2224  50					push	ax
038F:2225  7B 7D				jnp	loc_267			; Jump if not parity
038F:2227  0D 41FF				or	ax,41FFh
038F:222A  53					push	bx
038F:222B  44					inc	sp
038F:222C  46					inc	si
038F:222D  47					inc	di
038F:222E  48					dec	ax
038F:222F  4A					dec	dx
038F:2230  4B					dec	bx
038F:2231  4C					dec	sp
038F:2232  3A 22				cmp	ah,[bp+si]
038F:2234  7E					db	7Eh
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 68

038F:2235			loc_264:
038F:2235  FF					db	0FFh
038F:2236  7C 5A				jl	loc_265			; Jump if <
038F:2238  58					pop	ax
038F:2239  43					inc	bx
038F:223A  56					push	si
038F:223B  42					inc	dx
038F:223C  4E					dec	si
038F:223D  4D					dec	bp
038F:223E  3C 3E				cmp	al,3Eh			; '>'
038F:2240  3F					aas				; Ascii adjust
038F:2241  FF 2A				jmp	dword ptr [bp+si]	;*
							                        ;* No entry point to code
038F:2243  FF 20				jmp	word ptr [bx+si]	;*
							                        ;* No entry point to code
038F:2245  7C 54				jl	loc_266			; Jump if <
038F:2247  55					push	bp
038F:2248  56					push	si
038F:2249  57					push	di
038F:224A  58					pop	ax
038F:224B  59					pop	cx
038F:224C  5A					pop	dx
038F:224D  5B					pop	bx
038F:224E  5C					pop	sp
038F:224F  5D					pop	bp
038F:2250  FF					db	0FFh
038F:2251  FF 37				push	word ptr [bx]
038F:2253  38 39				cmp	[bx+di],bh
038F:2255  2D 3534				sub	ax,3534h
038F:2258  36: 2B 31				sub	si,ss:[bx+di]
038F:225B  32 33				xor	dh,[bp+di]
038F:225D  30 2E FFFF				xor	byte ptr ds:[0FFFFh],ch	; (038F:FFFF=32h)
038F:2261  7C 87				jl	loc_257			; Jump if <
038F:2263  88 FF				mov	bh,bh
038F:2265  E9 C3C2				jmp	$-3C3Bh
038F:2268  C4					db	0C4h
038F:2269  FF					db	0FFh
038F:226A  FF					db	0FFh
038F:226B  FF					db	0FFh
038F:226C  FF					db	0FFh
							                        ;* No entry point to code
038F:226D  FF C5				inc	bp
038F:226F  C6 C7 C8				mov	bh,0C8h
038F:2272  C9					db	0C9h
038F:2273  CA CCCB				retf	0CCCBh			; Return far
038F:2276  CD FF				int	0FFh			; ??INT Non-standard interrupt
038F:2278  F1					db	0F1h
038F:2279  0008[FF]				db	8 dup (0FFh)
038F:2281  FB					sti				; Enable interrupts
038F:2282  0008[FF]				db	8 dup (0FFh)
038F:228A  00			data_165	db	0
038F:228B  95					xchg	bp,ax
038F:228C  EB 02				jmp	short $+4
038F:228E  00 FF				add	bh,bh
038F:2290  55					push	bp
038F:2291  50					push	ax
038F:2292			loc_265:
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 69

038F:2292  53					push	bx
038F:2293  51					push	cx
038F:2294  52					push	dx
038F:2295  56					push	si
038F:2296  57					push	di
038F:2297  1E					push	ds
038F:2298  06					push	es
038F:2299  FC					cld				; Clear direction
038F:229A  BB 0040				mov	bx,40h
038F:229D  8E DB				mov	ds,bx
038F:229F  2E: 8B 2E 0ED3			mov	bp,cs:data_119		; (038F:0ED3=20A0h)
038F:22A4			loc_267:
038F:22A4  B4 01				mov	ah,1
038F:22A6  C4					db	0C4h
038F:22A7  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:22A9  90					nop
038F:22AA  90					nop
038F:22AB  E4 60				in	al,60h			; port 60h, keybd scan or sw1
038F:22AD  4FB4			data_166	dw	4FB4h
038F:22AF  F9					stc				; Set carry flag
038F:22B0  CD 15				int	15h			; General services, ah=func 01h
										;  cassette motor off
038F:22B2  72 03				jc	loc_268			; Jump if carry Set
038F:22B4  E9 028B				jmp	loc_310			; (2542)
038F:22B7			loc_268:
038F:22B7  3C FE				cmp	al,0FEh
038F:22B9  74 0C				je	loc_269			; Jump if equal
038F:22BB  3C FA				cmp	al,0FAh
038F:22BD  1075			data_169	dw	1075h
038F:22BF  80 0E 0097 10			or	byte ptr ds:[97h],10h	; (0040:0097=0)
038F:22C4  E9 027B				jmp	loc_310			; (2542)
038F:22C7			loc_269:
038F:22C7  80 0E 0097 20			or	byte ptr ds:[97h],20h	; (0040:0097=0) ' '
038F:22CC  E9 0273				jmp	loc_310			; (2542)
							                        ;* No entry point to code
038F:22CF  50					push	ax
038F:22D0  E8 05FF				call	sub_18			; (28D2)
038F:22D3  8A 1E 0097				mov	bl,byte ptr ds:[97h]	; (0040:0097=0)
038F:22D7  32 D8				xor	bl,al
038F:22D9  80 E3 07				and	bl,7
038F:22DC  74 03				jz	loc_270			; Jump if zero
038F:22DE  E8 05CE				call	sub_17			; (28AF)
038F:22E1			loc_270:
038F:22E1  58					pop	ax
038F:22E2  8A E0				mov	ah,al
038F:22E4  2E: A2 06EB				mov	cs:data_82,al		; (038F:06EB=0)
038F:22E8  3C FF				cmp	al,0FFh
038F:22EA  75 09				jne	loc_271			; Jump if not equal
038F:22EC  2E: C6 06 06EA 01			mov	cs:data_81,1		; (038F:06EA=0)
038F:22F2  E9 024D				jmp	loc_310			; (2542)
038F:22F5			loc_271:
038F:22F5  0E					push	cs
038F:22F6  07					pop	es
038F:22F7  8A 3E 0096				mov	bh,byte ptr ds:[96h]	; (0040:0096=10h)
038F:22FB  F6 C7 C0				test	bh,0C0h
038F:22FE  74 40				jz	loc_276			; Jump if zero
038F:2300  79 10				jns	loc_273			; Jump if not sign
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 70

038F:2302  3C AB				cmp	al,0ABh
038F:2304  75 05				jne	loc_272			; Jump if not equal
038F:2306  80 0E 0096 40			or	byte ptr ds:[96h],40h	; (0040:0096=10h) '@'
038F:230B			loc_272:
038F:230B  80 26 0096 7F			and	byte ptr ds:[96h],7Fh	; (0040:0096=10h)
038F:2310  EB 2B				jmp	short loc_275		; (233D)
038F:2312			loc_273:
038F:2312  80 26 0096 BF			and	byte ptr ds:[96h],0BFh	; (0040:0096=10h)
038F:2317  80 0E 0096 10			or	byte ptr ds:[96h],10h	; (0040:0096=10h)
038F:231C  3C 41				cmp	al,41h			; 'A'
038F:231E  74 10				je	loc_274			; Jump if equal
038F:2320  3C 83				cmp	al,83h
038F:2322  74 0C				je	loc_274			; Jump if equal
038F:2324  3C 86				cmp	al,86h
038F:2326  74 08				je	loc_274			; Jump if equal
038F:2328  3C 90				cmp	al,90h
038F:232A  74 04				je	loc_274			; Jump if equal
038F:232C  3C 92				cmp	al,92h
038F:232E  75 0D				jne	loc_275			; Jump if not equal
038F:2330			loc_274:
038F:2330  F6 C7 20				test	bh,20h			; ' '
038F:2333  74 08				jz	loc_275			; Jump if zero
038F:2335  80 0E 0017 20			or	byte ptr ds:[17h],20h	; (0040:0017=0) ' '
038F:233A  E8 0572				call	sub_17			; (28AF)
038F:233D			loc_275:
038F:233D  E9 0202				jmp	loc_310			; (2542)
038F:2340			loc_276:
038F:2340  3C E0				cmp	al,0E0h
038F:2342  75 07				jne	loc_277			; Jump if not equal
038F:2344  80 0E 0096 12			or	byte ptr ds:[96h],12h	; (0040:0096=10h)
038F:2349  EB 09				jmp	short loc_278		; (2354)
038F:234B			loc_277:
038F:234B  3C E1				cmp	al,0E1h
038F:234D  75 08				jne	loc_279			; Jump if not equal
038F:234F  80 0E 0096 11			or	byte ptr ds:[96h],11h	; (0040:0096=10h)
038F:2354			loc_278:
038F:2354  E9 01F0				jmp	loc_311			; (2547)
038F:2357			loc_279:
038F:2357  24 7F				and	al,7Fh
038F:2359  F6 C7 02				test	bh,2
038F:235C  74 0C				jz	loc_280			; Jump if zero
038F:235E  B9 0002				mov	cx,2
038F:2361  BF 0516				mov	di,516h
038F:2364  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:2366  75 5B				jnz	loc_284			; Jump if not zero
038F:2368  EB 44				jmp	short loc_282		; (23AE)
038F:236A			loc_280:
038F:236A  F6 C7 01				test	bh,1
038F:236D  74 1D				jz	loc_281			; Jump if zero
038F:236F  B9 0004				mov	cx,4
038F:2372  BF 0514				mov	di,514h
038F:2375  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:2377  74 DB				jz	loc_278			; Jump if zero
038F:2379  3C 45				cmp	al,45h			; 'E'
038F:237B  75 31				jne	loc_282			; Jump if not equal
038F:237D  F6 C4 80				test	ah,80h
038F:2380  75 2C				jnz	loc_282			; Jump if not zero
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 71

038F:2382  F6 06 0018 08			test	byte ptr ds:[18h],8	; (0040:0018=0)
038F:2387  75 25				jnz	loc_282			; Jump if not zero
038F:2389  E9 0351				jmp	loc_338			; (26DD)
038F:238C			loc_281:
038F:238C  3C 54				cmp	al,54h			; 'T'
038F:238E  75 33				jne	loc_284			; Jump if not equal
038F:2390  F6 C4 80				test	ah,80h
038F:2393  75 1C				jnz	loc_283			; Jump if not zero
038F:2395  F6 06 0018 04			test	byte ptr ds:[18h],4	; (0040:0018=0)
038F:239A  75 12				jnz	loc_282			; Jump if not zero
038F:239C  80 0E 0018 04			or	byte ptr ds:[18h],4	; (0040:0018=0)
038F:23A1  B4 03				mov	ah,3
038F:23A3  C4					db	0C4h
038F:23A4  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:23A6  B8 8500				mov	ax,8500h
038F:23A9  CD 15				int	15h			; General services, ah=func 85h
										;  SysReq key, al=0 make, =1 brk
038F:23AB  E9 01B4				jmp	loc_312			; (2562)
038F:23AE			loc_282:
038F:23AE  E9 0191				jmp	loc_310			; (2542)
038F:23B1			loc_283:
038F:23B1  80 26 0018 FB			and	byte ptr ds:[18h],0FBh	; (0040:0018=0)
038F:23B6  B4 03				mov	ah,3
038F:23B8  C4					db	0C4h
038F:23B9  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:23BB  B8 8501				mov	ax,8501h
038F:23BE  CD 15				int	15h			; General services, ah=func 85h
										;  SysReq key, al=0 make, =1 brk
038F:23C0  E9 019F				jmp	loc_312			; (2562)
038F:23C3			loc_284:
038F:23C3  8A 1E 0017				mov	bl,byte ptr ds:[17h]	; (0040:0017=0)
038F:23C7  BF 0510				mov	di,510h
038F:23CA  B9 0008				mov	cx,8
038F:23CD  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:23CF  8A C4				mov	al,ah
038F:23D1  74 03				jz	loc_285			; Jump if zero
038F:23D3  E9 0158				jmp	loc_309			; (252E)
038F:23D6			loc_285:
038F:23D6  81 EF 0511				sub	di,511h
038F:23DA  2E: 8A A5 0518			mov	ah,cs:data_74[di]	; (038F:0518=0)
038F:23DF  B1 02				mov	cl,2
038F:23E1  A8 80				test	al,80h
038F:23E3  74 03				jz	loc_286			; Jump if zero
038F:23E5  E9 00EA				jmp	loc_303			; (24D2)
038F:23E8			loc_286:
038F:23E8  80 FC 10				cmp	ah,10h
038F:23EB  73 6F				jae	loc_293			; Jump if above or =
038F:23ED  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:23F3  75 04				jne	loc_287			; Jump if not equal
038F:23F5  3C 38				cmp	al,38h			; '8'
038F:23F7  75 00				jne	loc_287			; Jump if not equal
038F:23F9			loc_287:
038F:23F9  08 26 0017				or	byte ptr ds:[17h],ah	; (0040:0017=0)
038F:23FD  F6 C4 0C				test	ah,0Ch
038F:2400  74 13				jz	loc_289			; Jump if zero
038F:2402  F6 C7 02				test	bh,2
038F:2405  74 06				jz	loc_288			; Jump if zero
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 72

038F:2407  08 26 0096				or	byte ptr ds:[96h],ah	; (0040:0096=10h)
038F:240B  EB 2C				jmp	short loc_291		; (2439)
038F:240D			loc_288:
038F:240D  D2 EC				shr	ah,cl			; Shift w/zeros fill
038F:240F  08 26 0018				or	byte ptr ds:[18h],ah	; (0040:0018=0)
038F:2413  EB 24				jmp	short loc_291		; (2439)
038F:2415			loc_289:
038F:2415  2E: F7 06 0EEB 8000			test	cs:data_126,8000h	; (038F:0EEB=20A9h)
038F:241C  74 1B				jz	loc_291			; Jump if zero
038F:241E  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:2424  75 13				jne	loc_291			; Jump if not equal
038F:2426  F7 C5 0200				test	bp,200h
038F:242A  75 05				jnz	loc_290			; Jump if not zero
038F:242C  F6 C7 10				test	bh,10h
038F:242F  74 08				jz	loc_291			; Jump if zero
038F:2431			loc_290:
038F:2431  80 26 0017 BF			and	byte ptr ds:[17h],0BFh	; (0040:0017=0)
038F:2436  E8 0476				call	sub_17			; (28AF)
038F:2439			loc_291:
038F:2439  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:243F  75 18				jne	loc_292			; Jump if not equal
038F:2441  2E: F7 06 0EEB 2000			test	cs:data_126,2000h	; (038F:0EEB=20A9h)
038F:2448  74 0F				jz	loc_292			; Jump if zero
038F:244A  2E: 80 0E 0115 04			or	byte ptr cs:data_30+1,4	; (038F:0115=0)
038F:2450  E8 F896		;*		call	sub_10			;*(1CE9)
038F:2450  E8 96 F8				db	0E8h, 96h,0F8h
038F:2453  2E: 80 26 0115 FB			and	byte ptr cs:data_30+1,0FBh	; (038F:0115=0)
038F:2459			loc_292:
038F:2459  E9 00E6				jmp	loc_310			; (2542)
038F:245C			loc_293:
038F:245C  F6 C3 04				test	bl,4
038F:245F  74 03				jz	loc_294			; Jump if zero
038F:2461  E9 00CA				jmp	loc_309			; (252E)
038F:2464			loc_294:
038F:2464  3C 52				cmp	al,52h			; 'R'
038F:2466  75 21				jne	loc_298			; Jump if not equal
038F:2468  F6 C3 08				test	bl,8
038F:246B  74 03				jz	loc_295			; Jump if zero
038F:246D  E9 00BE				jmp	loc_309			; (252E)
038F:2470			loc_295:
038F:2470  F6 C7 02				test	bh,2
038F:2473  75 14				jnz	loc_298			; Jump if not zero
038F:2475  F6 C3 20				test	bl,20h			; ' '
038F:2478  75 0A				jnz	loc_297			; Jump if not zero
038F:247A  F6 C3 03				test	bl,3
038F:247D  74 0A				jz	loc_298			; Jump if zero
038F:247F			loc_296:
038F:247F  8A E0				mov	ah,al
038F:2481  E9 00AA				jmp	loc_309			; (252E)
038F:2484			loc_297:
038F:2484  F6 C3 03				test	bl,3
038F:2487  74 F6				jz	loc_296			; Jump if zero
038F:2489			loc_298:
038F:2489  84 26 0018				test	ah,byte ptr ds:[18h]	; (0040:0018=0)
038F:248D  74 03				jz	loc_299			; Jump if zero
038F:248F  E9 00B0				jmp	loc_310			; (2542)
038F:2492			loc_299:
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 73

038F:2492  08 26 0018				or	byte ptr ds:[18h],ah	; (0040:0018=0)
038F:2496  30 26 0017				xor	byte ptr ds:[17h],ah	; (0040:0017=0)
038F:249A  2E: F7 06 0EEB 8000			test	cs:data_126,8000h	; (038F:0EEB=20A9h)
038F:24A1  74 1C				jz	loc_301			; Jump if zero
038F:24A3  F7 C5 0200				test	bp,200h
038F:24A7  75 05				jnz	loc_300			; Jump if not zero
038F:24A9  F6 C7 10				test	bh,10h
038F:24AC  74 11				jz	loc_301			; Jump if zero
038F:24AE			loc_300:
038F:24AE  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:24B4  75 09				jne	loc_301			; Jump if not equal
038F:24B6  F6 C4 40				test	ah,40h			; '@'
038F:24B9  74 04				jz	loc_301			; Jump if zero
038F:24BB  08 26 0017				or	byte ptr ds:[17h],ah	; (0040:0017=0)
038F:24BF			loc_301:
038F:24BF  F6 C4 70				test	ah,70h			; 'p'
038F:24C2  74 05				jz	loc_302			; Jump if zero
038F:24C4  50					push	ax
038F:24C5  E8 03E7				call	sub_17			; (28AF)
038F:24C8  58					pop	ax
038F:24C9			loc_302:
038F:24C9  3C 52				cmp	al,52h			; 'R'
038F:24CB  75 75				jne	loc_310			; Jump if not equal
038F:24CD  8A E0				mov	ah,al
038F:24CF  E9 009C				jmp	loc_313			; (256E)
038F:24D2			loc_303:
038F:24D2  80 FC 10				cmp	ah,10h
038F:24D5  F6 D4				not	ah
038F:24D7  73 4F				jnc	loc_308			; Jump if carry=0
038F:24D9  20 26 0017				and	byte ptr ds:[17h],ah	; (0040:0017=0)
038F:24DD  80 FC FB				cmp	ah,0FBh
038F:24E0  77 30				ja	loc_307			; Jump if above
038F:24E2  F6 C7 02				test	bh,2
038F:24E5  74 06				jz	loc_304			; Jump if zero
038F:24E7  20 26 0096				and	byte ptr ds:[96h],ah	; (0040:0096=10h)
038F:24EB  EB 06				jmp	short loc_305		; (24F3)
038F:24ED			loc_304:
038F:24ED  D2 FC				sar	ah,cl			; Shift w/sign fill
038F:24EF  20 26 0018				and	byte ptr ds:[18h],ah	; (0040:0018=0)
038F:24F3			loc_305:
038F:24F3  8A E0				mov	ah,al
038F:24F5  A0 0096				mov	al,byte ptr ds:[96h]	; (0040:0096=10h)
038F:24F8  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:24FE  75 02				jne	loc_306			; Jump if not equal
038F:2500  24 F7				and	al,0F7h
038F:2502			loc_306:
038F:2502  D2 E8				shr	al,cl			; Shift w/zeros fill
038F:2504  0A 06 0018				or	al,byte ptr ds:[18h]	; (0040:0018=0)
038F:2508  D2 E0				shl	al,cl			; Shift w/zeros fill
038F:250A  24 0C				and	al,0Ch
038F:250C  08 06 0017				or	byte ptr ds:[17h],al	; (0040:0017=0)
038F:2510  8A C4				mov	al,ah
038F:2512			loc_307:
038F:2512  3C B8				cmp	al,0B8h
038F:2514  75 2C				jne	loc_310			; Jump if not equal
038F:2516  A0 0019				mov	al,byte ptr ds:[19h]	; (0040:0019=0)
038F:2519  32 E4				xor	ah,ah			; Zero register
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 74

038F:251B  88 26 0019				mov	byte ptr ds:[19h],ah	; (0040:0019=0)
038F:251F  0A C0				or	al,al			; Zero ?
038F:2521  74 1F				jz	loc_310			; Jump if zero
038F:2523  E8 0328				call	sub_15			; (284E)
038F:2526  EB 1A				jmp	short loc_310		; (2542)
038F:2528			loc_308:
038F:2528  20 26 0018				and	byte ptr ds:[18h],ah	; (0040:0018=0)
038F:252C  EB 14				jmp	short loc_310		; (2542)
038F:252E			loc_309:
038F:252E  3C 80				cmp	al,80h
038F:2530  73 10				jae	loc_310			; Jump if above or =
038F:2532  F6 06 0018 08			test	byte ptr ds:[18h],8	; (0040:0018=0)
038F:2537  74 35				jz	loc_313			; Jump if zero
038F:2539  3C 45				cmp	al,45h			; 'E'
038F:253B  74 05				je	loc_310			; Jump if equal
038F:253D  80 26 0018 F7			and	byte ptr ds:[18h],0F7h	; (0040:0018=0)
038F:2542			loc_310:
038F:2542  80 26 0096 FC			and	byte ptr ds:[96h],0FCh	; (0040:0096=10h)
038F:2547			loc_311:
038F:2547  B4 02				mov	ah,2
038F:2549  2E: 8A 3E 06EA			mov	bh,cs:data_81		; (038F:06EA=0)
038F:254E  2E: 8A 1E 0CA8			mov	bl,cs:data_109		; (038F:0CA8=0)
038F:2553  2E: C6 06 0CA8 00			mov	cs:data_109,0		; (038F:0CA8=0)
038F:2559  2E: C6 06 06EA 00			mov	cs:data_81,0		; (038F:06EA=0)
038F:255F  C4					db	0C4h
038F:2560  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:2562			loc_312:
038F:2562  07					pop	es
038F:2563  1F					pop	ds
038F:2564  5F					pop	di
038F:2565  5E					pop	si
038F:2566  5A					pop	dx
038F:2567  59					pop	cx
038F:2568  5B					pop	bx
038F:2569  58					pop	ax
038F:256A  5D					pop	bp
038F:256B  E9 03D2				jmp	loc_386			; (2940)
038F:256E			loc_313:
038F:256E  3C 7E				cmp	al,7Eh			; '~'
038F:2570  77 D0				ja	loc_310			; Jump if above
038F:2572  F7 C5 4000				test	bp,4000h
038F:2576  75 04				jnz	loc_314			; Jump if not zero
038F:2578  3C 7E				cmp	al,7Eh			; '~'
038F:257A  77 C6				ja	loc_310			; Jump if above
038F:257C			loc_314:
038F:257C  F6 C3 08				test	bl,8
038F:257F  74 15				jz	loc_315			; Jump if zero
038F:2581  F6 C7 10				test	bh,10h
038F:2584  74 13				jz	loc_316			; Jump if zero
038F:2586  F6 06 0018 04			test	data_10,4		; (038F:0018=1)
038F:258B  74 0C				jz	loc_316			; Jump if zero
038F:258D  F6 C4 02				test	ah,2
038F:2590  74 04				jz	loc_315			; Jump if zero
038F:2592  A8 08				test	al,8
038F:2594  75 03				jnz	loc_316			; Jump if not zero
038F:2596			loc_315:
038F:2596  E9 0100				jmp	loc_334			; (2699)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 75

038F:2599			loc_316:
038F:2599  F6 C3 04				test	bl,4
038F:259C  74 14				jz	loc_317			; Jump if zero
038F:259E  3C 53				cmp	al,53h			; 'S'
038F:25A0  75 39				jne	loc_321			; Jump if not equal
038F:25A2  C7 06 0072 1234			mov	data_18,1234h		; (038F:0072=20Ah)
038F:25A8  83 26 0096 10			and	data_21,10h		; (038F:0096=0)
038F:25AD  EA FFFF:0000		;*		jmp	far ptr loc_474		;*(FFFF:0000)
038F:25AD  EA					db	0EAh
038F:25AE  0000 FFFF				dw	0, 0FFFFh
038F:25B2			loc_317:
038F:25B2  E8 F734		;*		call	sub_10			;*(1CE9)
038F:25B2  E8 34 F7				db	0E8h, 34h,0F7h
038F:25B5  72 8B				jc	loc_310			; Jump if carry Set
038F:25B7  3C 39				cmp	al,39h			; '9'
038F:25B9  75 05				jne	loc_318			; Jump if not equal
038F:25BB  B0 20				mov	al,20h			; ' '
038F:25BD  E9 0282				jmp	loc_370			; (2842)
038F:25C0			loc_318:
038F:25C0  F7 C5 8000				test	bp,8000h
038F:25C4  74 42				jz	loc_324			; Jump if zero
038F:25C6  3C 0F				cmp	al,0Fh
038F:25C8  75 06				jne	loc_319			; Jump if not equal
038F:25CA  B8 A500				mov	ax,0A500h
038F:25CD  E9 0272				jmp	loc_370			; (2842)
038F:25D0			loc_319:
038F:25D0  3C 4A				cmp	al,4Ah			; 'J'
038F:25D2  74 04				je	loc_320			; Jump if equal
038F:25D4  3C 4E				cmp	al,4Eh			; 'N'
038F:25D6  75 30				jne	loc_324			; Jump if not equal
038F:25D8			loc_320:
038F:25D8  E9 00A7				jmp	loc_332			; (2682)
038F:25DB			loc_321:
038F:25DB  2E: 3A 06 0EEE			cmp	al,cs:data_127		; (038F:0EEE=4Fh)
038F:25E0  75 09				jne	loc_322			; Jump if not equal
038F:25E2  2E: C6 06 06EF 00			mov	byte ptr cs:data_83+1,0	; (038F:06EF=0)
038F:25E8  E9 FF57				jmp	loc_310			; (2542)
038F:25EB			loc_322:
038F:25EB  2E: 3A 06 0EEF			cmp	al,byte ptr cs:data_128	; (038F:0EEF='MMAND.COM')
038F:25F0  75 09				jne	loc_323			; Jump if not equal
038F:25F2  2E: C6 06 06EF FF			mov	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:25F8  E9 FF47				jmp	loc_310			; (2542)
038F:25FB			loc_323:
038F:25FB  2E: 80 3E 06EF FF			cmp	byte ptr cs:data_83+1,0FFh	; (038F:06EF=0)
038F:2601  75 05				jne	loc_324			; Jump if not equal
038F:2603  E8 F6E3		;*		call	sub_10			;*(1CE9)
038F:2603  E8 E3 F6				db	0E8h,0E3h,0F6h
038F:2606  72 1F				jc	loc_325			; Jump if carry Set
038F:2608			loc_324:
038F:2608  BF 0520				mov	di,520h
038F:260B  B9 000A				mov	cx,0Ah
038F:260E  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:2610  75 18				jnz	loc_326			; Jump if not zero
038F:2612  F6 C7 02				test	bh,2
038F:2615  75 76				jnz	loc_333			; Jump if not zero
038F:2617  81 EF 0521				sub	di,521h
038F:261B  A0 0019				mov	al,data_11		; (038F:0019=12h)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 76

038F:261E  B4 0A				mov	ah,0Ah
038F:2620  F6 E4				mul	ah			; ax = reg * al
038F:2622  03 C7				add	ax,di
038F:2624  A2 0019				mov	data_11,al		; (038F:0019=12h)
038F:2627			loc_325:
038F:2627  E9 FF18				jmp	loc_310			; (2542)
038F:262A			loc_326:
038F:262A  C6 06 0019 00			mov	data_11,0		; (038F:0019=12h)
038F:262F  B9 001A				mov	cx,1Ah
038F:2632  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:2634  74 47				jz	loc_331			; Jump if zero
038F:2636  3C 02				cmp	al,2
038F:2638  72 48				jb	loc_332			; Jump if below
038F:263A  3C 0D				cmp	al,0Dh
038F:263C  77 05				ja	loc_327			; Jump if above
038F:263E  80 C4 76				add	ah,76h			; 'v'
038F:2641  EB 3A				jmp	short loc_331		; (267D)
038F:2643			loc_327:
038F:2643  3C 57				cmp	al,57h			; 'W'
038F:2645  72 08				jb	loc_328			; Jump if below
038F:2647  2C 52				sub	al,52h			; 'R'
038F:2649  BB 0544				mov	bx,544h
038F:264C  E9 01DC				jmp	loc_369			; (282B)
038F:264F			loc_328:
038F:264F  F6 C7 02				test	bh,2
038F:2652  74 1E				jz	loc_330			; Jump if zero
038F:2654  F7 C5 8000				test	bp,8000h
038F:2658  74 18				jz	loc_330			; Jump if zero
038F:265A  3C 1C				cmp	al,1Ch
038F:265C  75 06				jne	loc_329			; Jump if not equal
038F:265E  B8 A600				mov	ax,0A600h
038F:2661  E9 01DE				jmp	loc_370			; (2842)
038F:2664			loc_329:
038F:2664  3C 53				cmp	al,53h			; 'S'
038F:2666  74 25				je	loc_333			; Jump if equal
038F:2668  3C 35				cmp	al,35h			; '5'
038F:266A  75 BB				jne	loc_325			; Jump if not equal
038F:266C  B8 A400				mov	ax,0A400h
038F:266F  E9 01D0				jmp	loc_370			; (2842)
038F:2672			loc_330:
038F:2672  3C 3B				cmp	al,3Bh			; ';'
038F:2674  72 0C				jb	loc_332			; Jump if below
038F:2676  3C 44				cmp	al,44h			; 'D'
038F:2678  77 AD				ja	loc_325			; Jump if above
038F:267A  80 C4 2D				add	ah,2Dh			; '-'
038F:267D			loc_331:
038F:267D  32 C0				xor	al,al			; Zero register
038F:267F  E9 01C0				jmp	loc_370			; (2842)
038F:2682			loc_332:
038F:2682  F7 C5 8000				test	bp,8000h
038F:2686  74 9F				jz	loc_325			; Jump if zero
038F:2688  B0 F0				mov	al,0F0h
038F:268A  E9 01B5				jmp	loc_370			; (2842)
038F:268D			loc_333:
038F:268D  F7 C5 8000				test	bp,8000h
038F:2691  74 EA				jz	loc_331			; Jump if zero
038F:2693  04 50				add	al,50h			; 'P'
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 77

038F:2695  8A E0				mov	ah,al
038F:2697  EB E4				jmp	short loc_331		; (267D)
038F:2699			loc_334:
038F:2699  F6 C3 04				test	bl,4
038F:269C  75 03				jnz	loc_335			; Jump if not zero
038F:269E  E9 00B2				jmp	loc_347			; (2753)
038F:26A1			loc_335:
038F:26A1  3C 46				cmp	al,46h			; 'F'
038F:26A3  75 29				jne	loc_337			; Jump if not equal
038F:26A5  F7 C5 0200				test	bp,200h
038F:26A9  75 0A				jnz	loc_336			; Jump if not zero
038F:26AB  F6 C7 10				test	bh,10h
038F:26AE  74 05				jz	loc_336			; Jump if zero
038F:26B0  F6 C7 02				test	bh,2
038F:26B3  74 19				jz	loc_337			; Jump if zero
038F:26B5			loc_336:
038F:26B5  8B 1E 001A				mov	bx,data_12		; (038F:001A=4600h)
038F:26B9  89 1E 001C				mov	data_13,bx		; (038F:001C=0A07h)
038F:26BD  C6 06 0071 80			mov	byte ptr ds:[71h],80h	; (038F:0071=3)
038F:26C2  B4 04				mov	ah,4
038F:26C4  C4					db	0C4h
038F:26C5  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:26C7  CD 1B				int	1Bh			; Keyboard break (cntrl-break)
038F:26C9  2B C0				sub	ax,ax
038F:26CB  E9 0174				jmp	loc_370			; (2842)
038F:26CE			loc_337:
038F:26CE  3C 45				cmp	al,45h			; 'E'
038F:26D0  75 3B				jne	loc_341			; Jump if not equal
038F:26D2  F6 C7 10				test	bh,10h
038F:26D5  74 06				jz	loc_338			; Jump if zero
038F:26D7  F7 C5 0200				test	bp,200h
038F:26DB  74 30				jz	loc_341			; Jump if zero
038F:26DD			loc_338:
038F:26DD  80 0E 0018 08			or	data_10,8		; (038F:0018=1)
038F:26E2  B0 AE				mov	al,0AEh
038F:26E4  E8 01C5				call	sub_16			; (28AC)
038F:26E7  B4 03				mov	ah,3
038F:26E9  C4					db	0C4h
038F:26EA  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:26EC  E8 0209				call	sub_19			; (28F8)
038F:26EF			loc_339:
038F:26EF  B9 0010				mov	cx,10h
038F:26F2  33 C0				xor	ax,ax			; Zero register
038F:26F4  C4					db	0C4h
038F:26F5  C4 5A F6				les	bx,dword ptr [bp+si-0Ah]	; Load 32 bit ptr
038F:26F8  06					push	es
038F:26F9  18 00				sbb	[bx+si],al
038F:26FB  08 74 04				or	[si+4],dh
038F:26FE  E1 F7		;*		loopz	locloop_340		;*Loop if zf=1, cx>0

038F:26FE  E1 F7				db	0E1h,0F7h
038F:2700  75 ED				jnz	loc_339			; Jump if not zero
038F:2702  E8 021B				call	sub_20			; (2920)
038F:2705  80 26 0018 F7			and	data_10,0F7h		; (038F:0018=1)
038F:270A  E9 FE55				jmp	loc_312			; (2562)
038F:270D			loc_341:
038F:270D  3C 37				cmp	al,37h			; '7'
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 78

038F:270F  75 1D				jne	loc_344			; Jump if not equal
038F:2711  F7 C5 0200				test	bp,200h
038F:2715  74 07				jz	loc_342			; Jump if zero
038F:2717  F6 C7 02				test	bh,2
038F:271A  74 0C				jz	loc_343			; Jump if zero
038F:271C  EB 2F				jmp	short loc_346		; (274D)
038F:271E			loc_342:
038F:271E  F6 C7 10				test	bh,10h
038F:2721  74 05				jz	loc_343			; Jump if zero
038F:2723  F6 C7 02				test	bh,2
038F:2726  74 25				jz	loc_346			; Jump if zero
038F:2728			loc_343:
038F:2728  B8 7200				mov	ax,7200h
038F:272B  E9 0114				jmp	loc_370			; (2842)
038F:272E			loc_344:
038F:272E  E8 F5B8		;*		call	sub_10			;*(1CE9)
038F:272E  E8 B8 F5				db	0E8h,0B8h,0F5h
038F:2731  72 58				jc	loc_351			; Jump if carry Set
038F:2733  3C 0F				cmp	al,0Fh
038F:2735  74 16				je	loc_346			; Jump if equal
038F:2737  3C 35				cmp	al,35h			; '5'
038F:2739  75 0B				jne	loc_345			; Jump if not equal
038F:273B  F6 C7 02				test	bh,2
038F:273E  74 06				jz	loc_345			; Jump if zero
038F:2740  B8 9500				mov	ax,9500h
038F:2743  E9 00FC				jmp	loc_370			; (2842)
038F:2746			loc_345:
038F:2746  BB 0570				mov	bx,570h
038F:2749  3C 3B				cmp	al,3Bh			; ';'
038F:274B  72 74				jb	loc_358			; Jump if below
038F:274D			loc_346:
038F:274D  BB 0570				mov	bx,570h
038F:2750  E9 00D8				jmp	loc_369			; (282B)
038F:2753			loc_347:
038F:2753  E8 F593		;*		call	sub_10			;*(1CE9)
038F:2753  E8 93 F5				db	0E8h, 93h,0F5h
038F:2756  72 33				jc	loc_351			; Jump if carry Set
038F:2758  3C 37				cmp	al,37h			; '7'
038F:275A  75 32				jne	loc_352			; Jump if not equal
038F:275C  F7 C5 0200				test	bp,200h
038F:2760  74 07				jz	loc_348			; Jump if zero
038F:2762  F6 C7 02				test	bh,2
038F:2765  74 0E				jz	loc_349			; Jump if zero
038F:2767  EB 4B				jmp	short loc_355		; (27B4)
038F:2769			loc_348:
038F:2769  F6 C7 10				test	bh,10h
038F:276C  74 07				jz	loc_349			; Jump if zero
038F:276E  F6 C7 02				test	bh,2
038F:2771  75 07				jnz	loc_350			; Jump if not zero
038F:2773  EB 3F				jmp	short loc_355		; (27B4)
038F:2775			loc_349:
038F:2775  F6 C3 03				test	bl,3
038F:2778  74 3A				jz	loc_355			; Jump if zero
038F:277A			loc_350:
038F:277A  80 26 0096 FC			and	byte ptr data_21,0FCh	; (038F:0096=0)
038F:277F  B4 03				mov	ah,3
038F:2781  C4					db	0C4h
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 79

038F:2782  C4 09				les	cx,dword ptr [bx+di]	; Load 32 bit ptr
038F:2784  55					push	bp
038F:2785  CD 05				int	5			; Print screen (status at 50:0h)
038F:2787  5D					pop	bp
038F:2788  E9 FDD7				jmp	loc_312			; (2562)
038F:278B			loc_351:
038F:278B  E9 FDB4				jmp	loc_310			; (2542)
038F:278E			loc_352:
038F:278E  3C 3A				cmp	al,3Ah			; ':'
038F:2790  77 31				ja	loc_359			; Jump if above
038F:2792  F6 C7 08				test	bh,8
038F:2795  75 F4				jnz	loc_351			; Jump if not zero
038F:2797  3C 35				cmp	al,35h			; '5'
038F:2799  75 05				jne	loc_353			; Jump if not equal
038F:279B  F6 C7 02				test	bh,2
038F:279E  75 14				jnz	loc_355			; Jump if not zero
038F:27A0			loc_353:
038F:27A0  B9 001A				mov	cx,1Ah
038F:27A3  BF 052A				mov	di,52Ah
038F:27A6  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:27A8  75 05				jnz	loc_354			; Jump if not zero
038F:27AA  F6 C3 40				test	bl,40h			; '@'
038F:27AD  75 0A				jnz	loc_356			; Jump if not zero
038F:27AF			loc_354:
038F:27AF  F6 C3 03				test	bl,3
038F:27B2  75 0A				jnz	loc_357			; Jump if not zero
038F:27B4			loc_355:
038F:27B4  BB 05EE				mov	bx,5EEh
038F:27B7  EB 5D				jmp	short loc_368		; (2816)
038F:27B9			loc_356:
038F:27B9  F6 C3 03				test	bl,3
038F:27BC  75 F6				jnz	loc_355			; Jump if not zero
038F:27BE			loc_357:
038F:27BE  BB 066C				mov	bx,66Ch
038F:27C1			loc_358:
038F:27C1  EB 53				jmp	short loc_368		; (2816)
038F:27C3			loc_359:
038F:27C3  3C 44				cmp	al,44h			; 'D'
038F:27C5  77 02				ja	loc_360			; Jump if above
038F:27C7  EB 43				jmp	short loc_367		; (280C)
038F:27C9			loc_360:
038F:27C9  3C 53				cmp	al,53h			; 'S'
038F:27CB  77 31				ja	loc_365			; Jump if above
038F:27CD  3C 4A				cmp	al,4Ah			; 'J'
038F:27CF  74 ED				je	loc_357			; Jump if equal
038F:27D1  3C 4E				cmp	al,4Eh			; 'N'
038F:27D3  74 E9				je	loc_357			; Jump if equal
038F:27D5  F6 C7 02				test	bh,2
038F:27D8  75 0A				jnz	loc_361			; Jump if not zero
038F:27DA  F6 C3 20				test	bl,20h			; ' '
038F:27DD  75 18				jnz	loc_363			; Jump if not zero
038F:27DF  F6 C3 03				test	bl,3
038F:27E2  75 18				jnz	loc_364			; Jump if not zero
038F:27E4			loc_361:
038F:27E4  3C 4C				cmp	al,4Ch			; 'L'
038F:27E6  75 0A				jne	loc_362			; Jump if not equal
038F:27E8  F7 C5 8000				test	bp,8000h
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 80

038F:27EC  74 57				jz	loc_371			; Jump if zero
038F:27EE  B0 F0				mov	al,0F0h
038F:27F0  EB 50				jmp	short loc_370		; (2842)
038F:27F2			loc_362:
038F:27F2  BB 05EE				mov	bx,5EEh
038F:27F5  EB 34				jmp	short loc_369		; (282B)
038F:27F7			loc_363:
038F:27F7  F6 C3 03				test	bl,3
038F:27FA  75 E8				jnz	loc_361			; Jump if not zero
038F:27FC			loc_364:
038F:27FC  EB C0				jmp	short loc_357		; (27BE)
038F:27FE			loc_365:
038F:27FE  3C 56				cmp	al,56h			; 'V'
038F:2800  75 04				jne	loc_366			; Jump if not equal
038F:2802  B0 3A				mov	al,3Ah			; ':'
038F:2804  EB 88				jmp	short loc_352		; (278E)
038F:2806			loc_366:
038F:2806  F7 C5 8000				test	bp,8000h
038F:280A  74 39				jz	loc_371			; Jump if zero
038F:280C			loc_367:
038F:280C  F6 C3 03				test	bl,3
038F:280F  74 D3				jz	loc_361			; Jump if zero
038F:2811  BB 066C				mov	bx,66Ch
038F:2814  EB 15				jmp	short loc_369		; (282B)
038F:2816			loc_368:
038F:2816  FE C8				dec	al
038F:2818  2E: D7				xlat	cs:[bx]			; al=[al+[bx]] table
038F:281A  F6 06 0096 02			test	byte ptr data_21,2	; (038F:0096=0)
038F:281F  74 21				jz	loc_370			; Jump if zero
038F:2821  F7 C5 8000				test	bp,8000h
038F:2825  74 1B				jz	loc_370			; Jump if zero
038F:2827  B4 E0				mov	ah,0E0h
038F:2829  EB 17				jmp	short loc_370		; (2842)
038F:282B			loc_369:
038F:282B  FE C8				dec	al
038F:282D  2E: D7				xlat	cs:[bx]			; al=[al+[bx]] table
038F:282F  8A E0				mov	ah,al
038F:2831  32 C0				xor	al,al			; Zero register
038F:2833  F6 06 0096 02			test	byte ptr data_21,2	; (038F:0096=0)
038F:2838  74 08				jz	loc_370			; Jump if zero
038F:283A  F7 C5 8000				test	bp,8000h
038F:283E  74 02				jz	loc_370			; Jump if zero
038F:2840  B0 E0				mov	al,0E0h
038F:2842			loc_370:
038F:2842  E8 0004				call	sub_14			; (2849)
038F:2845			loc_371:
038F:2845  E9 FCFA				jmp	loc_310			; (2542)
038F:2848  00 80 FFFC				add	byte ptr ds:[0FFFCh][bx+si],al	; (038F:FFFC=55h)
038F:284C  74 48				jz	loc_376			; Jump if zero

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_15		proc	near
038F:284E  56					push	si
038F:284F  53					push	bx
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 81

038F:2850  1E					push	ds
038F:2851  BB 0040				mov	bx,40h
038F:2854  8E DB				mov	ds,bx
038F:2856  8B 1E 001C				mov	bx,word ptr ds:[1Ch]	; (0040:001C=2Eh)
038F:285A  8B F3				mov	si,bx
038F:285C  43					inc	bx
038F:285D  43					inc	bx
038F:285E  F7 C5 0800				test	bp,800h
038F:2862  75 0B				jnz	loc_372			; Jump if not zero
038F:2864  81 FB 003E				cmp	bx,3Eh
038F:2868  75 0F				jne	loc_373			; Jump if not equal
038F:286A  BB 001E				mov	bx,1Eh
038F:286D  EB 0A				jmp	short loc_373		; (2879)
038F:286F			loc_372:
038F:286F  3B 1E 0082				cmp	bx,word ptr ds:[82h]	; (0040:0082=3Eh)
038F:2873  75 04				jne	loc_373			; Jump if not equal
038F:2875  8B 1E 0080				mov	bx,word ptr ds:[80h]	; (0040:0080=1Eh)
038F:2879			loc_373:
038F:2879  3B 1E 001A				cmp	bx,word ptr ds:[1Ah]	; (0040:001A=2Eh)
038F:287D  74 0E				je	loc_374			; Jump if equal
038F:287F  89 04				mov	[si],ax
038F:2881  89 1E 001C				mov	word ptr ds:[1Ch],bx	; (0040:001C=2Eh)
038F:2885  2E: C6 06 0CA8 01			mov	cs:data_109,1		; (038F:0CA8=0)
038F:288B  EB 06				jmp	short loc_375		; (2893)
038F:288D			loc_374:
038F:288D  2E: C6 06 06EA 01			mov	cs:data_81,1		; (038F:06EA=0)
038F:2893			loc_375:
038F:2893  1F					pop	ds
038F:2894  5B					pop	bx
038F:2895  5E					pop	si
038F:2896			loc_376:
038F:2896  C3					retn
				sub_15		endp

							                        ;* No entry point to code
038F:2897  2E: 80 3E 06EA 01			cmp	cs:data_81,1		; (038F:06EA=0)
038F:289D  75 0C				jne	loc_377			; Jump if not equal
038F:289F  2E: C6 06 06EA 00			mov	cs:data_81,0		; (038F:06EA=0)
038F:28A5  B4 0E				mov	ah,0Eh
038F:28A7  B0 07				mov	al,7
038F:28A9  CD 10				int	10h			; Video display   ah=functn 0Eh
										;  write char al, teletype mode
038F:28AB			loc_377:
038F:28AB  C3					retn

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_16		proc	near
038F:28AC  E6 64				out	64h,al			; port 64h, kybd cntrlr functn
										;  al = 0AEh, enable keyboard
038F:28AE  C3					retn
				sub_16		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 82

				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_17		proc	near
038F:28AF  F6 06 0097 40			test	byte ptr ds:[97h],40h	; (0040:0097=0) '@'
038F:28B4  75 1B				jnz	loc_378			; Jump if not zero
038F:28B6  80 0E 0097 40			or	byte ptr ds:[97h],40h	; (0040:0097=0) '@'
038F:28BB  E8 0014				call	sub_18			; (28D2)
038F:28BE  80 26 0097 F8			and	byte ptr ds:[97h],0F8h	; (0040:0097=0)
038F:28C3  08 06 0097				or	byte ptr ds:[97h],al	; (0040:0097=0)
038F:28C7  B4 03				mov	ah,3
038F:28C9  C4					db	0C4h
038F:28CA  C4 16 2680				les	dx,dword ptr ds:[2680h]	; (0040:2680=1174h) Load 32 bit ptr
038F:28CE  97					xchg	di,ax
038F:28CF  00 3F				add	[bx],bh
038F:28D1			loc_378:
038F:28D1  C3					retn
				sub_17		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_18		proc	near
038F:28D2  51					push	cx
038F:28D3  A0 0017				mov	al,byte ptr ds:[17h]	; (0040:0017=0)
038F:28D6  24 70				and	al,70h			; 'p'
038F:28D8  B1 04				mov	cl,4
038F:28DA  D2 C0				rol	al,cl			; Rotate
038F:28DC  24 07				and	al,7
038F:28DE  59					pop	cx
038F:28DF  C3					retn
				sub_18		endp

038F:28E0  50					push	ax
038F:28E1  51					push	cx
038F:28E2  B9 03E3				mov	cx,3E3h

038F:28E5			locloop_379:
038F:28E5  E4 61				in	al,61h			; port 61h, 8255 port B, read
038F:28E7  24 10				and	al,10h
038F:28E9  3A C4				cmp	al,ah
038F:28EB  74 F8				je	locloop_379		; Jump if equal
038F:28ED  8A E0				mov	ah,al
038F:28EF  E4 64				in	al,64h			; port 64h, keyboard status
038F:28F1  A8 02				test	al,2
038F:28F3  E0 F0				loopnz	locloop_379		; Loop if zf=0, cx>0

038F:28F5  59					pop	cx
038F:28F6  58					pop	ax
038F:28F7  C3					retn

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 83

				sub_19		proc	near
038F:28F8  1E					push	ds
038F:28F9  50					push	ax
038F:28FA  B8 0040				mov	ax,40h
038F:28FD  8E D8				mov	ds,ax
038F:28FF  9F					lahf				; Load ah from flags
038F:2900  F7 06 0314 0003			test	word ptr ds:[314h],3	; (0040:0314=3200h)
038F:2906  75 14				jnz	loc_381			; Jump if not zero
038F:2908  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:290E  75 0C				jnz	loc_381			; Jump if not zero
038F:2910  F0> 81 0E 0314 0200	                           lock	or	word ptr ds:[314h],200h	; (0040:0314=3200h)
038F:2917			loc_380:
038F:2917  9E					sahf				; Store ah into flags
038F:2918  58					pop	ax
038F:2919  1F					pop	ds
038F:291A  EB 03				jmp	short loc_382		; (291F)
038F:291C			loc_381:
038F:291C  FB					sti				; Enable interrupts
038F:291D  EB F8				jmp	short loc_380		; (2917)
038F:291F			loc_382:
038F:291F  C3					retn
				sub_19		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_20		proc	near
038F:2920  1E					push	ds
038F:2921  50					push	ax
038F:2922  B8 0040				mov	ax,40h
038F:2925  8E D8				mov	ds,ax
038F:2927  9F					lahf				; Load ah from flags
038F:2928  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:292E  75 0C				jnz	loc_384			; Jump if not zero
038F:2930  F0> 81 26 0314 FDFF	                           lock	and	word ptr ds:[314h],0FDFFh	; (0040:0314=3200h)
038F:2937			loc_383:
038F:2937  9E					sahf				; Store ah into flags
038F:2938  58					pop	ax
038F:2939  1F					pop	ds
038F:293A  EB 03				jmp	short loc_385		; (293F)
038F:293C			loc_384:
038F:293C  FA					cli				; Disable interrupts
038F:293D  EB F8				jmp	short loc_383		; (2937)
038F:293F			loc_385:
038F:293F  C3					retn
				sub_20		endp

038F:2940			loc_386:
038F:2940  1E					push	ds
038F:2941  50					push	ax

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 84

				sub_21		proc	near
038F:2942  B8 0040				mov	ax,40h
038F:2945  8E D8				mov	ds,ax
038F:2947  F7 06 0314 2400			test	word ptr ds:[314h],2400h	; (0040:0314=3200h)
038F:294D  75 4F				jnz	loc_394			; Jump if not zero
038F:294F  55					push	bp
038F:2950  8B EC				mov	bp,sp
038F:2952  8B 46 0A				mov	ax,[bp+0Ah]
038F:2955  5D					pop	bp
038F:2956  A9 0100				test	ax,100h
038F:2959  75 43				jnz	loc_394			; Jump if not zero
038F:295B  A9 0200				test	ax,200h
038F:295E  74 22				jz	loc_390			; Jump if zero
038F:2960  F0> 81 0E 0314 0200	                           lock	or	word ptr ds:[314h],200h	; (0040:0314=3200h)
038F:2967  F7 06 0314 0003			test	word ptr ds:[314h],3	; (0040:0314=3200h)
038F:296D  75 2F				jnz	loc_394			; Jump if not zero
038F:296F			loc_387:
038F:296F  86 E0				xchg	ah,al
038F:2971  FC					cld				; Clear direction
038F:2972  A8 04				test	al,4
038F:2974  75 25				jnz	loc_393			; Jump if not zero
038F:2976			loc_388:
038F:2976  A8 08				test	al,8
038F:2978  75 11				jnz	loc_391			; Jump if not zero
038F:297A  70 19				jo	loc_392			; Jump if overflow=1
038F:297C			loc_389:
038F:297C  9E					sahf				; Store ah into flags
038F:297D  58					pop	ax
038F:297E  1F					pop	ds
038F:297F  CA 0002				retf	2			; Return far
038F:2982			loc_390:
038F:2982  F0> 81 26 0314 FDFF	                           lock	and	word ptr ds:[314h],0FDFFh	; (038F:0314=0)
038F:2989  EB E4				jmp	short loc_387		; (296F)
038F:298B			loc_391:
038F:298B  70 EF				jo	loc_389			; Jump if overflow=1
038F:298D  50					push	ax
038F:298E  B0 7F				mov	al,7Fh
038F:2990  04 02				add	al,2
038F:2992  58					pop	ax
038F:2993  EB E7				jmp	short loc_389		; (297C)
038F:2995			loc_392:
038F:2995  50					push	ax
038F:2996  32 C0				xor	al,al			; Zero register
038F:2998  58					pop	ax
038F:2999  EB E1				jmp	short loc_389		; (297C)
038F:299B			loc_393:
038F:299B  FD					std				; Set direction flag
038F:299C  EB D8				jmp	short loc_388		; (2976)
038F:299E			loc_394:
038F:299E  58					pop	ax
038F:299F  1F					pop	ds
038F:29A0  CF			data_174	db	0CFh			; Data table (indexed access)
038F:29A1  000F[00]				db	15 dup (0)
038F:29B0  80 FC AD				cmp	ah,0ADh
038F:29B3  74 05				je	loc_396			; Jump if equal
038F:29B5			loc_395:
038F:29B5  2E: FF 2E 0EC9			jmp	dword ptr cs:data_117	; (038F:0EC9=0A2AEh)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 85

038F:29BA			loc_396:
038F:29BA  55					push	bp
038F:29BB  8B EC				mov	bp,sp
038F:29BD  83 66 06 FE				and	word ptr [bp+6],0FFFEh
038F:29C1  E8 0003				call	sub_22			; (29C7)
038F:29C4  5D					pop	bp
038F:29C5  EB EE				jmp	short loc_395		; (29B5)
				sub_21		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_22		proc	near
038F:29C7  3C 80				cmp	al,80h
038F:29C9  75 0C				jne	loc_397			; Jump if not equal
038F:29CB  B8 FFFF				mov	ax,0FFFFh
038F:29CE  BB 0100				mov	bx,100h
038F:29D1  BF 0EC5				mov	di,0EC5h
038F:29D4  0E					push	cs
038F:29D5  07					pop	es
038F:29D6  C3					retn
038F:29D7			loc_397:
038F:29D7  3C 81				cmp	al,81h
038F:29D9  75 28				jne	loc_403			; Jump if not equal
038F:29DB  2E: 8B 36 0EE3			mov	si,word ptr cs:[0EE3h]	; (038F:0EE3=0A0E0h)
038F:29E0			loc_398:
038F:29E0  83 FE FF				cmp	si,0FFFFh
038F:29E3  74 16				je	loc_401			; Jump if equal
038F:29E5  2E: 3B 5C 02				cmp	bx,cs:[si+2]
038F:29E9  75 0B				jne	loc_400			; Jump if not equal
038F:29EB			loc_399:
038F:29EB  2E: 89 36 0EE1			mov	word ptr cs:[0EE1h],si	; (038F:0EE1=0AFA5h)
038F:29F0  2E: 89 1E 0EDD			mov	word ptr cs:[0EDDh],bx	; (038F:0EDD=0A0Dh)
038F:29F5  C3					retn
038F:29F6			loc_400:
038F:29F6  2E: 8B 34				mov	si,cs:[si]
038F:29F9  EB E5				jmp	short loc_398		; (29E0)
038F:29FB			loc_401:
038F:29FB  B8 0001				mov	ax,1
038F:29FE			loc_402:
038F:29FE  83 4E 06 01				or	word ptr [bp+6],1
038F:2A02  C3					retn
038F:2A03			loc_403:
038F:2A03  3C 82				cmp	al,82h
038F:2A05  75 46				jne	loc_407			; Jump if not equal
038F:2A07  FE C3				inc	bl
038F:2A09  80 FB 02				cmp	bl,2
038F:2A0C  FE CB				dec	bl
038F:2A0E  73 EE				jnc	loc_402			; Jump if carry=0
038F:2A10  2E: 88 1E 06EF			mov	byte ptr cs:data_83+1,bl	; (038F:06EF=0)
038F:2A15  EB 36				jmp	short loc_407		; (2A4D)
038F:2A17			loc_404:
038F:2A17  3C 83				cmp	al,83h
038F:2A19  75 1A				jne	loc_406			; Jump if not equal
038F:2A1B  33 C0				xor	ax,ax			; Zero register
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 86

038F:2A1D  2E: 0A 06 06EF			or	al,byte ptr cs:data_83+1	; (038F:06EF=0)
038F:2A22  74 10				jz	loc_405			; Jump if zero
038F:2A24  2E: F7 06 0EEB 1000			test	cs:data_126,1000h	; (038F:0EEB=20A9h)
038F:2A2B  74 07				jz	loc_405			; Jump if zero
038F:2A2D  2E: A0 0116				mov	al,byte ptr cs:data_30+2	; (038F:0116=0)
038F:2A31  24 01				and	al,1
038F:2A33  40					inc	ax
038F:2A34			loc_405:
038F:2A34  C3					retn
038F:2A35			loc_406:
038F:2A35  3C 84				cmp	al,84h
038F:2A37  75 14				jne	loc_407			; Jump if not equal
038F:2A39  2E: 8A 3E 0116			mov	bh,byte ptr cs:data_30+2	; (038F:0116=0)
038F:2A3E  F6 C3 FE				test	bl,0FEh
038F:2A41  75 D4				jnz	loc_404			; Jump if not zero
038F:2A43  80 E7 FE				and	bh,0FEh
038F:2A46  0A FB				or	bh,bl
038F:2A48  2E: 88 3E 0116			mov	byte ptr cs:data_30+2,bh	; (038F:0116=0)
038F:2A4D			loc_407:
038F:2A4D  C3					retn
				sub_22		endp

							                        ;* No entry point to code
038F:2A4E  00 00				add	[bx+si],al
038F:2A50  F3/ A4				rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
038F:2A52  26: C6 06 0ED5 01			mov	es:data_120,1		; (038F:0ED5=0A4h)
038F:2A58  CD 21				int	21h			; DOS Services  ah=function 00h
										;  terminate, cs=progm seg prefx
038F:2A5A  53					push	bx
038F:2A5B  48					dec	ax
038F:2A5C  41					inc	cx
038F:2A5D  52					push	dx
038F:2A5E  45					inc	bp
038F:2A5F  44					inc	sp
038F:2A60  20 44 41				and	[si+41h],al
038F:2A63  54					push	sp
038F:2A64  41					inc	cx
038F:2A65  0A 04				or	al,[si]
038F:2A67  0A 02				or	al,[bp+si]
038F:2A69  50					push	ax
038F:2A6A  09 9D 00D3				or	word ptr ds:[0D3h][di],bx	; (0000:00D3=0B800h)
038F:2A6E  00					db	0
038F:2A6F  00 00				add	[bx+si],al
038F:2A71  00 10				add	[bx+si],dl
038F:2A73  40					inc	ax
038F:2A74  80 01 00				add	byte ptr [bx+di],0
038F:2A77  00					db	0
038F:2A78  00 00				add	[bx+si],al
038F:2A7A  00 52 55				add	[bp+si+55h],dl
038F:2A7D  62					db	62h
038F:2A7E  03 00				add	ax,[bx+si]
038F:2A80  00 62 0F				add	[bp+si+0Fh],ah
038F:2A83  62					db	62h
038F:2A84  0F			;*		pop	cs			; Dangerous-8088 only
038F:2A84  0F					db	0Fh
038F:2A85  C5 17				lds	dx,dword ptr [bx]	; Load 32 bit ptr
038F:2A87  F4					hlt				; Halt processor
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 87

038F:2A88  0E					push	cs
038F:2A89  48					dec	ax
038F:2A8A  0F			;*		pop	cs			; Dangerous-8088 only
038F:2A8A  0F					db	0Fh
038F:2A8B  00 30				add	[bx+si],dh
038F:2A8D  00 3B				add	[bp+di],bh
038F:2A8F  3C 00				cmp	al,0
038F:2A91  00 00				add	[bx+si],al
038F:2A93  00 54 00		;*		add	[si+0],dl
038F:2A93  00 54 00				db	 00h, 54h, 00h
038F:2A96  00 30				add	[bx+si],dh
038F:2A98  50					push	ax
038F:2A99  80 04 04				add	byte ptr [si],4
038F:2A9C  0C 20				or	al,20h			; ' '
038F:2A9E  14 40				adc	al,40h			; '@'
038F:2AA0  00 02				add	[bp+si],al
038F:2AA2  A0 30B0				mov	al,byte ptr ds:[30B0h]	; (00A7:30B0=26h)
038F:2AA5  00 01				add	[bx+di],al
038F:2AA7  A0 8F60				mov	al,byte ptr ds:[8F60h]	; (00A7:8F60=0FCh)
038F:2AAA  30 30				xor	[bx+si],dh
038F:2AAC  92					xchg	dx,ax
038F:2AAD  00 00				add	[bx+si],al
038F:2AAF  30 0C				xor	[si],cl
038F:2AB1  40					inc	ax
038F:2AB2  0C 20				or	al,20h			; ' '
038F:2AB4  05 1B01				add	ax,1B01h
038F:2AB7  02 04				add	al,[si]
038F:2AB9  80 40 06 00				add	byte ptr [bx+si+6],0
038F:2ABD  40					inc	ax
038F:2ABE  40					inc	ax
038F:2ABF  03 20				add	sp,[bx+si]
038F:2AC1  40					inc	ax
038F:2AC2  04 30				add	al,30h			; '0'
038F:2AC4  20 40 05				and	[bx+si+5],al
038F:2AC7  00 40 40				add	[bx+si+40h],al
038F:2ACA  04 20				add	al,20h			; ' '
038F:2ACC  40					inc	ax
038F:2ACD  03 30				add	si,[bx+si]
038F:2ACF  30 30				xor	[bx+si],dh
038F:2AD1  20 80 6000				and	byte ptr ds:[6000h][bx+si],al	; (00A7:6000=0F2h)
038F:2AD5  04 80				add	al,80h
038F:2AD7  40					inc	ax
038F:2AD8  07					pop	es
038F:2AD9  30 20				xor	[bx+si],ah
038F:2ADB  03 08				add	cx,[bx+si]
038F:2ADD  1C 80				sbb	al,80h
038F:2ADF  40					inc	ax
038F:2AE0  07					pop	es
038F:2AE1  30 30				xor	[bx+si],dh
038F:2AE3  30 30				xor	[bx+si],dh
038F:2AE5  92					xchg	dx,ax
038F:2AE6  00 00				add	[bx+si],al
038F:2AE8  FF					db	0FFh
038F:2AE9  FF					db	0FFh
038F:2AEA  FF					db	0FFh
038F:2AEB  FF 14				call	word ptr [si]		;*
038F:2AED  00 8F FFFF				add	byte ptr ds:[0FFFFh][bx],cl	; (00A7:FFFF=74h)
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 88

038F:2AF1  FF					db	0FFh
038F:2AF2  FF 03				inc	word ptr [bp+di]
038F:2AF4  00 2A				add	[bp+si],ch
038F:2AF6  05 3600				add	ax,3600h
038F:2AF9  05 1D01				add	ax,1D01h
038F:2AFC  05 0001				add	ax,1
038F:2AFF  00 00				add	[bx+si],al
038F:2B01  00 48 0F				add	[bx+si+0Fh],cl
038F:2B04  62					db	62h
038F:2B05  03 0F				add	cx,[bx]
038F:2B07  00 05				add	[di],al
038F:2B09  FF					db	0FFh
038F:2B0A  FF					db	0FFh
038F:2B0B  FF					db	0FFh
038F:2B0C  FF 06 C000				inc	word ptr ds:[0C000h]	; (00A7:C000=0CB55h)
038F:2B10  01 35				add	[di],si
038F:2B12  2E: 00 00				add	cs:[bx+si],al
038F:2B15  1B 00				sbb	ax,[bx+si]
038F:2B17  06					push	es
038F:2B18  FF					db	0FFh
038F:2B19  FF					db	0FFh
038F:2B1A  FF					db	0FFh
038F:2B1B  FF 12				call	word ptr [bp+si]	;*
038F:2B1D  00 C0				add	al,al
038F:2B1F  07					pop	es
038F:2B20  03 22				add	sp,[bp+si]
038F:2B22  04 FC				add	al,0FCh
038F:2B24  05 073B				add	ax,73Bh
038F:2B27  3A 08				cmp	cl,[bx+si]
038F:2B29  3F					aas				; Ascii adjust
038F:2B2A  2B 2F				sub	bp,[bx]
038F:2B2C  35 002C				xor	ax,2Ch
038F:2B2F  00 25				add	[di],ah
038F:2B31  00 07				add	[bx],al
038F:2B33  FF					db	0FFh
038F:2B34  FF					db	0FFh
038F:2B35  FF					db	0FFh
038F:2B36  FF 1C				call	dword ptr [si]		;*
038F:2B38  00 C0				add	al,al
038F:2B3A  0C 03				or	al,3
038F:2B3C  40					inc	ax
038F:2B3D  04 23				add	al,23h			; '#'
038F:2B3F  05 07FD				add	ax,7FDh
038F:2B42  5E					pop	si
038F:2B43  08 26 2409				or	byte ptr ds:[2409h],ah	; (00A7:2409=0)
038F:2B47  1A 5B 1B				sbb	bl,[bp+di+1Bh]
038F:2B4A  5D					pop	bp
038F:2B4B  2B 7C 33				sub	di,[si+33h]
038F:2B4E  3C 34				cmp	al,34h			; '4'
038F:2B50  3E					db	3Eh
038F:2B51  35 002F				xor	ax,2Fh
038F:2B54  00 43 00		;*		add	[bp+di+0],al
038F:2B54  00 43 00				db	 00h, 43h, 00h
038F:2B57  03 FF				add	di,di
038F:2B59  FF					db	0FFh
038F:2B5A  FF					db	0FFh
038F:2B5B  FF 11				call	word ptr [bx+di]	;*
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 89

038F:2B5D  00 80 1B10				add	byte ptr ds:[1B10h][bx+si],al	; (00A7:1B10=0Fh)
038F:2B61  A9 E3E6				test	ax,0E3E6h
038F:2B64  AA					stosb				; Store al to es:[di]
038F:2B65  A5					movsw				; Mov [si] to es:[di]
038F:2B66  AD					lodsw				; String [si] to ax
038F:2B67  A3 E9E8				mov	word ptr ds:[0E9E8h],ax	; (00A7:E9E8=0BA01h)
038F:2B6A  A7					cmpsw				; Cmp [si] to es:[di]
038F:2B6B  E5 EA				in	ax,0EAh			; port 0EAh ??I/O Non-standard
038F:2B6D  0A 00				or	al,[bx+si]
038F:2B6F  80 1E E422 EB			sbb	byte ptr ds:[0E422h],0EBh	; (00A7:E422=53h)
038F:2B74  A2 AFA0				mov	byte ptr ds:[0AFA0h],al	; (00A7:AFA0=0BFh)
038F:2B77  0B 00				or	ax,[bx+si]
038F:2B79  80 24 29				and	byte ptr [si],29h	; ')'
038F:2B7C  AE					scasb				; Scan es:[di] for al
038F:2B7D  AB					stosw				; Store ax to es:[di]
038F:2B7E  A4					movsb				; Mov [si] to es:[di]
038F:2B7F  A6					cmpsb				; Cmp [si] to es:[di]
038F:2B80  ED					in	ax,dx			; port 2BECh ??I/O Non-standard
038F:2B81  F1					db	0F1h
038F:2B82  0E					push	cs
038F:2B83  00 80 342C				add	byte ptr ds:[342Ch][bx+si],al	; (00A7:342C=0)
038F:2B87  EF					out	dx,ax			; port 2BECh ??I/O Non-standard
038F:2B88  E7 E1				out	0E1h,ax			; port 0E1h, Memory encode reg1
038F:2B8A  AC					lodsb				; String [si] to al
038F:2B8B  A8 E2				test	al,0E2h
038F:2B8D  EC					in	al,dx			; port 2BECh ??I/O Non-standard
038F:2B8E  A1 06EE				mov	ax,word ptr ds:[6EEh]	; (00A7:06EE=0)
038F:2B91  00 60 01				add	[bx+si+1],ah
038F:2B94  23 E0				and	sp,ax
038F:2B96  00 00				add	[bx+si],al
038F:2B98  3E					db	3Eh
038F:2B99  00 04				add	[si],al
038F:2B9B  FF					db	0FFh
038F:2B9C  FF					db	0FFh
038F:2B9D  FF					db	0FFh
038F:2B9E  FF 11				call	word ptr [bx+di]	;*
038F:2BA0  00 80 1B10				add	byte ptr ds:[1B10h][bx+si],al	; (00A7:1B10=0Fh)
038F:2BA4  89 96 8A93				mov	[bp-756Dh],dx
038F:2BA8  85 8D 9883				test	cx,word ptr ds:[9883h][di]	; (00A7:9883=0BA02h)
038F:2BAC  99					cwd				; Word to double word
038F:2BAD  87 95 109A				xchg	word ptr ds:[109Ah][di],dx	; (00A7:109A=9090h)
038F:2BB1  00 80 281E				add	byte ptr ds:[281Eh][bx+si],al	; (00A7:281E=0)
038F:2BB5  94					xchg	sp,ax
038F:2BB6  9B					db	9Bh
038F:2BB7  82 80 908F 8E			add	byte ptr ds:[908Fh][bx+si],8Eh	; (00A7:908F=0B4h)
038F:2BBC  8B 84 9D86				mov	ax,word ptr ds:[9D86h][si]	; (00A7:9D86=0BD13h)
038F:2BC0  0E					push	cs
038F:2BC1  00 80 342C				add	byte ptr ds:[342Ch][bx+si],al	; (00A7:342C=0)
038F:2BC5  9F					lahf				; Load ah from flags
038F:2BC6  97					xchg	di,ax
038F:2BC7  91					xchg	cx,ax
038F:2BC8  8C 88 9C92				mov	word ptr ds:[9C92h][bx+si],cs	; (00A7:9C92=0FF32h)
038F:2BCC  81 9E 0006 0160			sbb	word ptr [bp+6],160h
038F:2BD2  29 F0				sub	ax,si
038F:2BD4  00					db	0
038F:2BD5  00 00				add	[bx+si],al
038F:2BD7  00 05				add	[di],al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 90

038F:2BD9  BA 8D8E				mov	dx,8D8Eh
038F:2BDC  EB 03				jmp	short loc_408		; (2BE1)
038F:2BDE  BA 8D80				mov	dx,8D80h
038F:2BE1			loc_408:
038F:2BE1  E9 08E0				jmp	$+8E3h
							                        ;* No entry point to code
038F:2BE4  B4 66				mov	ah,66h			; 'f'
038F:2BE6  B0 01				mov	al,1
038F:2BE8  CD 21				int	21h			; DOS Services  ah=function 66h
										;  get code page in bx & dx,al=1
038F:2BEA  89 1E 9AC7				mov	word ptr ds:[9AC7h],bx	; (00A7:9AC7=0C358h)
038F:2BEE  BA 8D9C				mov	dx,8D9Ch
038F:2BF1  E8 2E9D				call	$+2EA0h
038F:2BF4  C3					retn
							                        ;* No entry point to code
038F:2BF5  1E					push	ds
038F:2BF6  07					pop	es
038F:2BF7  BE 0081				mov	si,81h
038F:2BFA  BF 930F				mov	di,930Fh
038F:2BFD  33 C9				xor	cx,cx			; Zero register
038F:2BFF  33 D2				xor	dx,dx			; Zero register
038F:2C01  E8 00E2				call	sub_24			; (2CE6)
038F:2C04  BF 95D8				mov	di,95D8h
038F:2C07  3D FFFF				cmp	ax,0FFFFh
038F:2C0A  74 0E				je	loc_409			; Jump if equal
038F:2C0C  3D 0000				cmp	ax,0
038F:2C0F  75 36				jne	loc_414			; Jump if not equal
038F:2C11  80 3E A48D 06			cmp	byte ptr ds:[0A48Dh],6	; (038F:A48D=2Ch)
038F:2C16  74 09				je	loc_410			; Jump if equal
038F:2C18  EB 19				jmp	short loc_411		; (2C33)
038F:2C1A			loc_409:
038F:2C1A  B4 00				mov	ah,0
038F:2C1C  B0 2E				mov	al,2Eh			; '.'
038F:2C1E  AB					stosw				; Store ax to es:[di]
038F:2C1F  EB 29				jmp	short loc_415		; (2C4A)
038F:2C21			loc_410:
038F:2C21  56					push	si
038F:2C22  BE A491				mov	si,0A491h
038F:2C25  AC					lodsb				; String [si] to al
038F:2C26  04 40				add	al,40h			; '@'
038F:2C28  AA					stosb				; Store al to es:[di]
038F:2C29  B8 2E3A				mov	ax,2E3Ah
038F:2C2C  AB					stosw				; Store ax to es:[di]
038F:2C2D  B0 00				mov	al,0
038F:2C2F  AA					stosb				; Store al to es:[di]
038F:2C30  5E					pop	si
038F:2C31  EB 0C				jmp	short loc_413		; (2C3F)
038F:2C33			loc_411:
038F:2C33  56					push	si
038F:2C34  C5 36 A491				lds	si,dword ptr ds:[0A491h]	; (038F:A491=0FF39h) Load 32 bit ptr
038F:2C38			loc_412:
038F:2C38  AC					lodsb				; String [si] to al
038F:2C39  AA					stosb				; Store al to es:[di]
038F:2C3A  3C 00				cmp	al,0
038F:2C3C  75 FA				jne	loc_412			; Jump if not equal
038F:2C3E  5E					pop	si
038F:2C3F			loc_413:
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 91

038F:2C3F  BF 930F				mov	di,930Fh
038F:2C42  E8 008A				call	sub_23			; (2CCF)
038F:2C45  74 03				jz	loc_415			; Jump if zero
038F:2C47			loc_414:
038F:2C47  E9 087A				jmp	$+87Dh
038F:2C4A			loc_415:
038F:2C4A  BE 95D8				mov	si,95D8h
038F:2C4D  BF 970B				mov	di,970Bh
038F:2C50  B4 60				mov	ah,60h
038F:2C52  CD 21				int	21h			; DOS Services  ah=function 60h
										;  resolve path ds:si to es:di
										;*  undocumented function
038F:2C54  73 11				jnc	loc_416			; Jump if carry=0
038F:2C56  E8 FB9A		;*		call	sub_13			;*(27F3)
038F:2C56  E8 9A FB				db	0E8h, 9Ah,0FBh
038F:2C59  C7 06 9B4D 95D8			mov	word ptr ds:[9B4Dh],95D8h	; (58E9:9B4D=0FFFFh)
038F:2C5F  C6 06 8D23 01			mov	byte ptr ds:[8D23h],1	; (58E9:8D23=0FFh)
038F:2C64  E9 085D				jmp	$+860h
038F:2C67			loc_416:
038F:2C67  C7 06 9B4D 970B			mov	word ptr ds:[9B4Dh],970Bh	; (58E9:9B4D=0FFFFh)
038F:2C6D  BA 8EE8				mov	dx,8EE8h
038F:2C70  E8 04A3				call	$+4A6h
038F:2C73  E8 2E0C				call	$+2E0Fh
038F:2C76  C3					retn
							                        ;* No entry point to code
038F:2C77  1E					push	ds
038F:2C78  8E 1E 995F				mov	ds,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2C7C  80 3E 02B0 00			cmp	byte ptr ds:[2B0h],0	; (2BC9:02B0=94h)
038F:2C81  74 0B				je	loc_417			; Jump if equal
038F:2C83  83 3E 02B1 FF			cmp	word ptr ds:[2B1h],0FFFFh	; (2BC9:02B1=9C65h)
038F:2C88  74 13				je	loc_418			; Jump if equal
038F:2C8A  C4					db	0C4h
038F:2C8B  C4 54 00		;*		les	dx,dword ptr [si+0]	; Load 32 bit ptr
038F:2C8B  C4 54 00				db	0C4h, 54h, 00h
038F:2C8E			loc_417:
038F:2C8E  B8 122E				mov	ax,122Eh
038F:2C91  B2 05				mov	dl,5
038F:2C93  8B 3E 02C7				mov	di,word ptr ds:[2C7h]	; (2BC9:02C7=8C96h)
038F:2C97  8E 06 02C9				mov	es,word ptr ds:[2C9h]	; (2BC9:02C9=9A8Dh)
038F:2C9B  CD 2F				int	2Fh			; DOS Internal services
										;*  undocumented function
038F:2C9D			loc_418:
038F:2C9D  1F					pop	ds
038F:2C9E  E8 031B				call	sub_39			; (2FBC)
038F:2CA1  8E 06 995F				mov	es,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2CA5  26: A1 024B				mov	ax,word ptr es:[24Bh]	; (2BC9:024B=4800h)
038F:2CA9  26: A3 0016				mov	word ptr es:[16h],ax	; (2BC9:0016=998Dh)
038F:2CAD  26: A1 024D				mov	ax,word ptr es:[24Dh]	; (2BC9:024D=978Eh)
038F:2CB1  26: A3 000A				mov	word ptr es:[0Ah],ax	; (2BC9:000A=0FF11h)
038F:2CB5  26: A1 024F				mov	ax,word ptr es:[24Fh]	; (2BC9:024F=959Ah)
038F:2CB9  26: A3 000C				mov	word ptr es:[0Ch],ax	; (2BC9:000C=0)
038F:2CBD  06					push	es
038F:2CBE  8E 06 996F				mov	es,word ptr ds:[996Fh]	; (038F:996F=0CA3Bh)
038F:2CC2  B4 49				mov	ah,49h
038F:2CC4  CD 21				int	21h			; DOS Services  ah=function 49h
										;  release memory block, es=seg
038F:2CC6  07					pop	es
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 92

038F:2CC7  B4 4C				mov	ah,4Ch			; 'L'
038F:2CC9  26: A0 02A7				mov	al,byte ptr es:[2A7h]	; (2BC9:02A7=95h)
038F:2CCD  CD 21				int	21h			; DOS Services  ah=function 4Ch
										;  terminate with al=return code

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_23		proc	near
038F:2CCF  33 D2				xor	dx,dx			; Zero register
038F:2CD1  89 36 9AC5				mov	word ptr ds:[9AC5h],si	; (58E9:9AC5=0FFFFh)
038F:2CD5  E8 2D9E				call	$+2DA1h
038F:2CD8  3C FF				cmp	al,0FFh
038F:2CDA  74 09				je	loc_420			; Jump if equal
038F:2CDC  3D 0000				cmp	ax,0
038F:2CDF  75 01				jne	loc_419			; Jump if not equal
038F:2CE1  40					inc	ax
038F:2CE2			loc_419:
038F:2CE2  E8 0015				call	sub_25			; (2CFA)
038F:2CE5			loc_420:
038F:2CE5  C3					retn
				sub_23		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_24		proc	near
038F:2CE6  89 36 9AC5				mov	word ptr ds:[9AC5h],si	; (038F:9AC5=732h)
038F:2CEA  E8 2D89				call	$+2D8Ch
038F:2CED  3C FF				cmp	al,0FFh
038F:2CEF  74 08				je	loc_421			; Jump if equal
038F:2CF1  3D 0000				cmp	ax,0
038F:2CF4  74 03				je	loc_421			; Jump if equal
038F:2CF6  E8 0001				call	sub_25			; (2CFA)
038F:2CF9			loc_421:
038F:2CF9  C3					retn
				sub_24		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_25		proc	near
038F:2CFA  C6 06 8D1F 02			mov	byte ptr ds:[8D1Fh],2	; (58E9:8D1F=0FFh)
038F:2CFF  BA 8D21				mov	dx,8D21h
038F:2D02  C6 04 00				mov	byte ptr [si],0
038F:2D05  A3 8D21				mov	word ptr ds:[8D21h],ax	; (58E9:8D21=0FFFFh)
038F:2D08  3D 0002				cmp	ax,2
038F:2D0B  74 0D				je	loc_422			; Jump if equal
038F:2D0D  8B 36 9AC5				mov	si,word ptr ds:[9AC5h]	; (58E9:9AC5=0FFFFh)
038F:2D11  89 36 9B4D				mov	word ptr ds:[9B4Dh],si	; (58E9:9B4D=0FFFFh)
038F:2D15  C6 06 8D23 01			mov	byte ptr ds:[8D23h],1	; (58E9:8D23=0FFh)
038F:2D1A			loc_422:
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 93

038F:2D1A  46					inc	si
038F:2D1B  C3					retn
				sub_25		endp

							                        ;* No entry point to code
038F:2D1C  E8 00FE				call	sub_26			; (2E1D)
038F:2D1F  E8 01B5				call	sub_32			; (2ED7)
038F:2D22  56					push	si
038F:2D23  E8 01A3				call	sub_31			; (2EC9)
038F:2D26  5E					pop	si
038F:2D27  75 01				jnz	loc_424			; Jump if not zero
038F:2D29			loc_423:
038F:2D29  C3					retn
038F:2D2A			loc_424:
038F:2D2A  E8 017D				call	sub_30			; (2EAA)
038F:2D2D  E8 0199				call	sub_31			; (2EC9)
038F:2D30  56					push	si
038F:2D31  EB 53				jmp	short loc_430		; (2D86)
038F:2D33			loc_425:
038F:2D33  E9 00BE				jmp	loc_437			; (2DF4)
							                        ;* No entry point to code
038F:2D36  E8 0190				call	sub_31			; (2EC9)
038F:2D39  74 F8				jz	loc_425			; Jump if zero
038F:2D3B  33 DB				xor	bx,bx			; Zero register
038F:2D3D  56					push	si
038F:2D3E			loc_426:
038F:2D3E  AC					lodsb				; String [si] to al
038F:2D3F  3C 0D				cmp	al,0Dh
038F:2D41  74 0F				je	loc_427			; Jump if equal
038F:2D43  3C 3D				cmp	al,3Dh			; '='
038F:2D45  75 F7				jne	loc_426			; Jump if not equal
038F:2D47  FE C3				inc	bl
038F:2D49  80 3C 0D				cmp	byte ptr [si],0Dh
038F:2D4C  75 F0				jne	loc_426			; Jump if not equal
038F:2D4E  FE C7				inc	bh
038F:2D50  EB EC				jmp	short loc_426		; (2D3E)
038F:2D52			loc_427:
038F:2D52  5E					pop	si
038F:2D53  FE CB				dec	bl
038F:2D55  74 06				jz	loc_428			; Jump if zero
038F:2D57  BA 8DB9				mov	dx,8DB9h
038F:2D5A  E9 0767				jmp	$+76Ah
038F:2D5D			loc_428:
038F:2D5D  53					push	bx
038F:2D5E  E8 00BF				call	sub_27			; (2E20)
038F:2D61  5B					pop	bx
038F:2D62  FE CF				dec	bh
038F:2D64  74 C3				jz	loc_ret_423		; Jump if zero
038F:2D66  E8 016E				call	sub_32			; (2ED7)
038F:2D69  8B DF				mov	bx,di
038F:2D6B  E8 013C				call	sub_30			; (2EAA)
038F:2D6E  56					push	si
038F:2D6F  87 DF				xchg	bx,di
038F:2D71  C6 06 9261 00			mov	byte ptr ds:[9261h],0	; (038F:9261=0F6h)
038F:2D76  BE 8F9D				mov	si,8F9Dh
038F:2D79  B9 0004				mov	cx,4
038F:2D7C  F3/ A7				repe	cmpsw			; Rep zf=1+cx >0 Cmp [si] to es:[di]
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 94

038F:2D7E  75 04				jnz	loc_429			; Jump if not zero
038F:2D80  FE 06 9261				inc	byte ptr ds:[9261h]	; (038F:9261=0F6h)
038F:2D84			loc_429:
038F:2D84  8B FB				mov	di,bx
038F:2D86			loc_430:
038F:2D86  5E					pop	si
038F:2D87  56					push	si
038F:2D88			loc_431:
038F:2D88  AC					lodsb				; String [si] to al
038F:2D89  3C 0D				cmp	al,0Dh
038F:2D8B  74 05				je	loc_432			; Jump if equal
038F:2D8D  E8 01B6				call	sub_37			; (2F46)
038F:2D90  EB F6				jmp	short loc_431		; (2D88)
038F:2D92			loc_432:
038F:2D92  5E					pop	si
038F:2D93  80 3E 9261 00			cmp	byte ptr ds:[9261h],0	; (038F:9261=0F6h)
038F:2D98			loc_433:
038F:2D98  74 8F				je	loc_ret_423		; Jump if equal
038F:2D9A  E8 0386				call	$+389h
038F:2D9D  8E 06 995F				mov	es,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2DA1  BF 0258				mov	di,258h
038F:2DA4  8B DF				mov	bx,di
038F:2DA6  33 C0				xor	ax,ax			; Zero register
038F:2DA8  26: A2 02A1				mov	byte ptr es:[2A1h],al	; (2BC9:02A1=8Dh)
038F:2DAC  50					push	ax
038F:2DAD  8A 04				mov	al,[si]
038F:2DAF  E8 0147				call	sub_35			; (2EF9)
038F:2DB2  58					pop	ax
038F:2DB3  75 18				jnz	loc_434			; Jump if not zero
038F:2DB5  80 7C 01 3A				cmp	byte ptr [si+1],3Ah	; ':'
038F:2DB9  75 12				jne	loc_434			; Jump if not equal
038F:2DBB  8A 04				mov	al,[si]
038F:2DBD  E8 0163				call	sub_36			; (2F23)
038F:2DC0  2C 41				sub	al,41h			; 'A'
038F:2DC2  83 C7 02				add	di,2
038F:2DC5  FE C0				inc	al
038F:2DC7  26: A2 02A1				mov	byte ptr es:[2A1h],al	; (2BC9:02A1=8Dh)
038F:2DCB  04 40				add	al,40h			; '@'
038F:2DCD			loc_434:
038F:2DCD  26: 89 3E 0237			mov	word ptr es:[237h],di	; (2BC9:0237=908Ch)
038F:2DD2  26: A2 023C				mov	byte ptr es:[23Ch],al	; (2BC9:023C=89h)
038F:2DD6  8B FB				mov	di,bx
038F:2DD8			loc_435:
038F:2DD8  AC					lodsb				; String [si] to al
038F:2DD9  E8 034F				call	$+352h
038F:2DDC  74 07				jz	loc_436			; Jump if zero
038F:2DDE  3C 0D				cmp	al,0Dh
038F:2DE0  74 03				je	loc_436			; Jump if equal
038F:2DE2  AA					stosb				; Store al to es:[di]
038F:2DE3  EB F3				jmp	short loc_435		; (2DD8)
038F:2DE5			loc_436:
038F:2DE5  32 C0				xor	al,al			; Zero register
038F:2DE7  AA					stosb				; Store al to es:[di]
038F:2DE8  C6 06 9261 00			mov	byte ptr ds:[9261h],0	; (038F:9261=0F6h)
038F:2DED  4F					dec	di
038F:2DEE  26: 89 3E 0298			mov	word ptr es:[298h],di	; (2BC9:0298=8F48h)
038F:2DF3  C3					retn
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 95

038F:2DF4			loc_437:
038F:2DF4  8E 1E 995F				mov	ds,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2DF8  8E 1E 0458				mov	ds,word ptr ds:[458h]	; (2BC9:0458=0FF13h)
038F:2DFC  33 F6				xor	si,si			; Zero register
038F:2DFE			loc_438:
038F:2DFE  80 3C 00				cmp	byte ptr [si],0
038F:2E01  74 95				je	loc_433			; Jump if equal
038F:2E03  BF 9AC9				mov	di,9AC9h
038F:2E06			loc_439:
038F:2E06  AC					lodsb				; String [si] to al
038F:2E07  AA					stosb				; Store al to es:[di]
038F:2E08  0A C0				or	al,al			; Zero ?
038F:2E0A  75 FA				jnz	loc_439			; Jump if not zero
038F:2E0C  BA 8EBE				mov	dx,8EBEh
038F:2E0F  1E					push	ds
038F:2E10  06					push	es
038F:2E11  1F					pop	ds
038F:2E12  E8 2C6D				call	$+2C70h
038F:2E15  1F					pop	ds
038F:2E16  EB E6				jmp	short loc_438		; (2DFE)
038F:2E18  BE 8F91				mov	si,8F91h
038F:2E1B  EB 03				jmp	short loc_440		; (2E20)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_26		proc	near
038F:2E1D  BE 8F96				mov	si,8F96h

				;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

				sub_27:
038F:2E20			loc_440:
038F:2E20  56					push	si
038F:2E21  1E					push	ds
038F:2E22  E8 002C				call	sub_28			; (2E51)
038F:2E25  72 17				jc	loc_442			; Jump if carry Set
038F:2E27  8B F7				mov	si,di
038F:2E29  E8 00C5				call	sub_34			; (2EF1)
038F:2E2C  87 F7				xchg	si,di
038F:2E2E  26: 80 3C 00				cmp	byte ptr es:[si],0
038F:2E32  75 01				jne	loc_441			; Jump if not equal
038F:2E34  4E					dec	si
038F:2E35			loc_441:
038F:2E35  E8 0170				call	sub_38			; (2FA8)
038F:2E38  2B CE				sub	cx,si
038F:2E3A  06					push	es
038F:2E3B  1F					pop	ds
038F:2E3C  F3/ A4				rep	movsb			; Rep when cx >0 Mov [si] to es:[di]
038F:2E3E			loc_442:
038F:2E3E  1F					pop	ds
038F:2E3F  5E					pop	si
038F:2E40			loc_443:
038F:2E40  C3					retn
				sub_26		endp

           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 96

							                        ;* No entry point to code
038F:2E41  BE 8F91				mov	si,8F91h
038F:2E44  EB 03				jmp	short loc_444		; (2E49)
038F:2E46  BE 8F96				mov	si,8F96h
038F:2E49			loc_444:
038F:2E49  E8 0005				call	sub_28			; (2E51)
038F:2E4C  72 F2				jc	loc_ret_443		; Jump if carry Set
038F:2E4E  E9 009C				jmp	loc_456			; (2EED)

				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_28		proc	near
038F:2E51  FC					cld				; Clear direction
038F:2E52  E8 0041				call	sub_29			; (2E96)
038F:2E55  8E 06 995F				mov	es,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2E59  26: 8E 06 0458			mov	es,word ptr es:[458h]	; (2BC9:0458=0FF13h)
038F:2E5E  33 FF				xor	di,di			; Zero register
038F:2E60			loc_445:
038F:2E60  51					push	cx
038F:2E61  56					push	si
038F:2E62  57					push	di

038F:2E63			locloop_446:
038F:2E63  AC					lodsb				; String [si] to al
038F:2E64  E8 0092				call	sub_35			; (2EF9)
038F:2E67  74 0F				jz	loc_447			; Jump if zero
038F:2E69  4E					dec	si
038F:2E6A  AD					lodsw				; String [si] to ax
038F:2E6B  47					inc	di
038F:2E6C  47					inc	di
038F:2E6D  26: 3B 45 FE				cmp	ax,es:[di-2]
038F:2E71  75 11				jne	loc_448			; Jump if not equal
038F:2E73  49					dec	cx
038F:2E74  E2 ED				loop	locloop_446		; Loop if cx > 0

038F:2E76  EB 0C				jmp	short loc_448		; (2E84)
038F:2E78			loc_447:
038F:2E78  E8 00A8				call	sub_36			; (2F23)
038F:2E7B  47					inc	di
038F:2E7C  26: 3A 45 FF				cmp	al,es:[di-1]
038F:2E80  75 02				jne	loc_448			; Jump if not equal
038F:2E82  E2 DF				loop	locloop_446		; Loop if cx > 0

038F:2E84			loc_448:
038F:2E84  5F					pop	di
038F:2E85  5E					pop	si
038F:2E86  59					pop	cx
038F:2E87  74 B7				jz	loc_ret_443		; Jump if zero
038F:2E89  51					push	cx
038F:2E8A  E8 0064				call	sub_34			; (2EF1)
038F:2E8D  59					pop	cx
038F:2E8E  26: 80 3D 00				cmp	byte ptr es:[di],0
038F:2E92  75 CC				jne	loc_445			; Jump if not equal
038F:2E94  F9					stc				; Set carry flag
038F:2E95  C3					retn
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 97

				sub_28		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_29		proc	near
038F:2E96  1E					push	ds
038F:2E97  07					pop	es
038F:2E98  8B FE				mov	di,si
038F:2E9A  57					push	di
038F:2E9B  E8 004F				call	sub_33			; (2EED)
038F:2E9E  EB 04				jmp	short loc_449		; (2EA4)
038F:2EA0  57					push	di
038F:2EA1  E8 004D				call	sub_34			; (2EF1)
038F:2EA4			loc_449:
038F:2EA4  59					pop	cx
038F:2EA5  2B F9				sub	di,cx
038F:2EA7  87 F9				xchg	di,cx
038F:2EA9			loc_450:
038F:2EA9  C3					retn
				sub_29		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_30		proc	near
038F:2EAA			loc_451:
038F:2EAA  80 3C 0D				cmp	byte ptr [si],0Dh
038F:2EAD  74 FA				je	loc_ret_450		; Jump if equal
038F:2EAF  AC					lodsb				; String [si] to al
038F:2EB0  E8 0046				call	sub_35			; (2EF9)
038F:2EB3  74 09				jz	loc_452			; Jump if zero
038F:2EB5  E8 008E				call	sub_37			; (2F46)
038F:2EB8  AC					lodsb				; String [si] to al
038F:2EB9  E8 008A				call	sub_37			; (2F46)
038F:2EBC  EB EC				jmp	short loc_451		; (2EAA)
038F:2EBE			loc_452:
038F:2EBE  E8 0062				call	sub_36			; (2F23)
038F:2EC1  E8 0082				call	sub_37			; (2F46)
038F:2EC4  3C 3D				cmp	al,3Dh			; '='
038F:2EC6  75 E2				jne	loc_451			; Jump if not equal
038F:2EC8			loc_453:
038F:2EC8  C3					retn
				sub_30		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_31		proc	near
038F:2EC9  BE 0080				mov	si,80h
038F:2ECC  AC					lodsb				; String [si] to al
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 98

038F:2ECD  0A C0				or	al,al			; Zero ?
038F:2ECF  74 F7				jz	loc_ret_453		; Jump if zero
038F:2ED1  E8 024F				call	$+252h
038F:2ED4  3C 0D				cmp	al,0Dh
038F:2ED6			loc_454:
038F:2ED6  C3					retn
				sub_31		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_32		proc	near
038F:2ED7  8E 06 995F				mov	es,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2EDB  26: 8E 06 0458			mov	es,word ptr es:[458h]	; (2BC9:0458=0FF13h)
038F:2EE0  33 FF				xor	di,di			; Zero register
038F:2EE2			loc_455:
038F:2EE2  26: 80 3D 00				cmp	byte ptr es:[di],0
038F:2EE6  74 EE				je	loc_ret_454		; Jump if equal
038F:2EE8  E8 0006				call	sub_34			; (2EF1)
038F:2EEB  EB F5				jmp	short loc_455		; (2EE2)
				sub_32		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_33		proc	near
038F:2EED			loc_456:
038F:2EED  B0 3D				mov	al,3Dh			; '='
038F:2EEF  EB 02				jmp	short loc_457		; (2EF3)

				;ﬂﬂﬂﬂ External Entry into Subroutine ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ

				sub_34:
038F:2EF1  32 C0				xor	al,al			; Zero register
038F:2EF3			loc_457:
038F:2EF3  B9 1000				mov	cx,1000h
038F:2EF6  F2/ AE				repne	scasb			; Rep zf=0+cx >0 Scan es:[di] for al
038F:2EF8  C3					retn
				sub_33		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_35		proc	near
038F:2EF9  1E					push	ds
038F:2EFA  56					push	si
038F:2EFB  50					push	ax
038F:2EFC  2E: 8E 1E 995F			mov	ds,word ptr cs:[995Fh]	; (038F:995F=2BC9h)
038F:2F01  C5 36 02CB				lds	si,dword ptr ds:[2CBh]	; (2BC9:02CB=549Bh) Load 32 bit ptr
038F:2F05			loc_458:
038F:2F05  83 3C 00				cmp	word ptr [si],0
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 99

038F:2F08  74 0E				je	loc_459			; Jump if equal
038F:2F0A  58					pop	ax
038F:2F0B  50					push	ax
038F:2F0C  3A 04				cmp	al,[si]
038F:2F0E  72 08				jb	loc_459			; Jump if below
038F:2F10  46					inc	si
038F:2F11  3A 04				cmp	al,[si]
038F:2F13  76 07				jbe	loc_460			; Jump if below or =
038F:2F15  46					inc	si
038F:2F16  EB ED				jmp	short loc_458		; (2F05)
038F:2F18			loc_459:
038F:2F18  33 C0				xor	ax,ax			; Zero register
038F:2F1A  EB 03				jmp	short loc_461		; (2F1F)
038F:2F1C			loc_460:
038F:2F1C  33 C0				xor	ax,ax			; Zero register
038F:2F1E  40					inc	ax
038F:2F1F			loc_461:
038F:2F1F  58					pop	ax
038F:2F20  5E					pop	si
038F:2F21  1F					pop	ds
038F:2F22  C3					retn
				sub_35		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_36		proc	near
038F:2F23  3C 80				cmp	al,80h
038F:2F25  72 14				jb	loc_462			; Jump if below
038F:2F27  2C 80				sub	al,80h
038F:2F29  1E					push	ds
038F:2F2A  53					push	bx
038F:2F2B  8E 1E 995F				mov	ds,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2F2F  C5 1E 02C3				lds	bx,dword ptr ds:[2C3h]	; (2BC9:02C3=0A18Bh) Load 32 bit ptr
038F:2F33  83 C3 02				add	bx,2
038F:2F36  D7					xlat				; al=[al+[bx]] table
038F:2F37  5B					pop	bx
038F:2F38  1F					pop	ds
038F:2F39  EB 0A				jmp	short loc_463		; (2F45)
038F:2F3B			loc_462:
038F:2F3B  3C 61				cmp	al,61h			; 'a'
038F:2F3D  72 06				jb	loc_463			; Jump if below
038F:2F3F  3C 7A				cmp	al,7Ah			; 'z'
038F:2F41  77 02				ja	loc_463			; Jump if above
038F:2F43  2C 20				sub	al,20h			; ' '
038F:2F45			loc_463:
038F:2F45  C3					retn
				sub_36		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_37		proc	near
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 100

038F:2F46  51					push	cx
038F:2F47  53					push	bx
038F:2F48  06					push	es
038F:2F49  1E					push	ds
038F:2F4A  8E 1E 995F				mov	ds,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2F4E  8E 06 0458				mov	es,word ptr ds:[458h]	; (2BC9:0458=0FF13h)
038F:2F52  1F					pop	ds
038F:2F53  E8 0052				call	sub_38			; (2FA8)
038F:2F56  8B D9				mov	bx,cx
038F:2F58  83 EB 02				sub	bx,2
038F:2F5B  3B FB				cmp	di,bx
038F:2F5D  72 3F				jb	loc_467			; Jump if below
038F:2F5F  50					push	ax
038F:2F60  51					push	cx
038F:2F61  53					push	bx
038F:2F62  E8 E1F8				call	sub_8			; (115D)
038F:2F65  5B					pop	bx
038F:2F66  83 C3 02				add	bx,2
038F:2F69  81 FB 8000				cmp	bx,8000h
038F:2F6D  72 03				jb	loc_465			; Jump if below
038F:2F6F			loc_464:
038F:2F6F  F9					stc				; Set carry flag
038F:2F70  EB 16				jmp	short loc_466		; (2F88)
038F:2F72			loc_465:
038F:2F72  B1 04				mov	cl,4
038F:2F74  D3 EB				shr	bx,cl			; Shift w/zeros fill
038F:2F76  43					inc	bx
038F:2F77  8C C1				mov	cx,es
038F:2F79  03 CB				add	cx,bx
038F:2F7B  83 C1 20				add	cx,20h
038F:2F7E  8C C8				mov	ax,cs
038F:2F80  3B C8				cmp	cx,ax
038F:2F82  73 EB				jae	loc_464			; Jump if above or =
038F:2F84  B4 4A				mov	ah,4Ah
038F:2F86  CD 21				int	21h			; DOS Services  ah=function 4Ah
										;  change memory allocation
										;   bx=bytes/16, es=mem segment
038F:2F88			loc_466:
038F:2F88  9C					pushf				; Push flags
038F:2F89  06					push	es
038F:2F8A  8E 06 995F				mov	es,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2F8E  E8 E1DC		;*		call	sub_9			;*(116D)
038F:2F8E  E8 DC E1				db	0E8h,0DCh,0E1h
038F:2F91  07					pop	es
038F:2F92  9D					popf				; Pop flags
038F:2F93  59					pop	cx
038F:2F94  58					pop	ax
038F:2F95  73 07				jnc	loc_467			; Jump if carry=0
038F:2F97  07					pop	es
038F:2F98  BA 8D38				mov	dx,8D38h
038F:2F9B  E9 0526				jmp	$+529h
038F:2F9E			loc_467:
038F:2F9E  AA					stosb				; Store al to es:[di]
038F:2F9F  26: C7 05 0000			mov	word ptr es:[di],0
038F:2FA4  07					pop	es
038F:2FA5  5B					pop	bx
038F:2FA6  59					pop	cx
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 101

038F:2FA7  C3					retn
				sub_37		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_38		proc	near
038F:2FA8  06					push	es
038F:2FA9  50					push	ax
038F:2FAA  8C C0				mov	ax,es
038F:2FAC  48					dec	ax
038F:2FAD  8E C0				mov	es,ax
038F:2FAF  26: A1 0003				mov	ax,word ptr es:[3]	; (038E:0003=7Eh)
038F:2FB3  B1 04				mov	cl,4
038F:2FB5  D3 E0				shl	ax,cl			; Shift w/zeros fill
038F:2FB7  8B C8				mov	cx,ax
038F:2FB9  58					pop	ax
038F:2FBA  07					pop	es
038F:2FBB			loc_468:
038F:2FBB  C3					retn
				sub_38		endp


				;ﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂﬂ
				;                              SUBROUTINE
				;‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹‹

				sub_39		proc	near
038F:2FBC  1E					push	ds
038F:2FBD  8E 1E 995F				mov	ds,word ptr ds:[995Fh]	; (038F:995F=2BC9h)
038F:2FC1  80 3E 02AF 00			cmp	byte ptr ds:[2AFh],0	; (2BC9:02AF=8Ah)
038F:2FC6  1F					pop	ds
038F:2FC7  74 F2				jz	loc_ret_468		; Jump if zero
038F:2FC9  BA 978E				mov	dx,978Eh
038F:2FCC  B4 3B				mov	ah,3Bh
038F:2FCE  CD 21				int	21h			; DOS Services  ah=function 3Bh
										;  set current dir, path @ ds:dx
038F:2FD0  32 C0				xor	al,al			; Zero register
038F:2FD2  E8 089F				call	$+8A2h
038F:2FD5  C3					retn
				sub_39		endp

							                        ;* No entry point to code
038F:2FD6  BE 0081				mov	si,81h
038F:2FD9  BF 930F				mov	di,930Fh
038F:2FDC  33 C9				xor	cx,cx			; Zero register
038F:2FDE  33 D2				xor	dx,dx			; Zero register
038F:2FE0  E8 FD03				call	sub_24			; (2CE6)
038F:2FE3  3D FFFF				cmp	ax,0FFFFh
038F:2FE6  74 16				je	loc_469			; Jump if equal
038F:2FE8  3D 0000				cmp	ax,0
038F:2FEB  75 50				jne	$+52h			; Jump if not equal
038F:2FED  80 3E A48D 06			cmp	byte ptr ds:[0A48Dh],6	; (038F:A48D=2Ch)
038F:2FF2  75 11		;*		jne	loc_470			;*Jump if not equal
038F:2FF2  75 11				db	 75h, 11h
           Temp.lst				Sourcer	v5.10   15-Sep-20   8:35 pm   Page 102

038F:2FF4  BF 930F				mov	di,930Fh
038F:2FF7  33 D2				xor	dx,dx			; Zero register
038F:2FF9  E8 FCD3				call	sub_23			; (2CCF)
038F:2FFC  75 3F				jnz	$+41h			; Jump if not zero
038F:2FFE			loc_469:
038F:2FFE  E8 F941				call	sub_21			; (2942)

