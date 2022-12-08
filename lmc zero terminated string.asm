Displays the characters in the string by incrementing the lda string instruction so the address loaded is increased on each iteration. 

ldchar   	lda string 	//initially with start addr of string
			brz end     //stop if zero 
			otc         //output char 

			lda ldchar  //get lda instruction 
			add one     //add 1 to increment address to load 
			sta ldchar  //re-write instruction 
			bra ldchar  //goto load instruction 
			end hlt     //end 

one			dat 1 		//for incrementing address 
string   	dat 104 	//string to display zero terminated 
			dat 101 
			dat 108 
			dat 108 
			dat 111 
			dat 32 
			dat 119 
			dat 111 
			dat 114 
			dat 108 
			dat 100 
			dat 33 
			dat 0 

 