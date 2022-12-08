		      inp
		      sta smallest
loop	    inp
		      sta current
		      sub smallest
		      brp next

		      lda current
		      sta smallest

next	    lda count
		      sub one
		      sta count
		      brz finish
		
          bra loop

finish    lda smallest
		      out
		      hlt

count		  dat 4
one		    dat 1
smallest  dat 0
current		dat 0
