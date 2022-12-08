			inp
			sta num
			inp
			sta div

loop		lda num
			sub div
			sta num
			brp inc
			
			lda count
			out
			hlt
			
inc			lda count
			add one
			sta count
			bra loop

end			hlt
						
			
num			dat 0
div			dat 0
count		dat 0
one			dat 1
