Noughts and Crosses output 

drawboard   lda boardload   //set inital load address   
            sto drawloop    //and store at start of drawloop 
            lda drawmax     //load up draw counter start value 
            sto drawcount   //and store 

drawloop    lda 50          //gets overwritten 
            otc             //output grid value 
            lda drawloop    //load up lda instruction 

            add one         //add one to address 
            sto drawloop    //and overwrite previous instruction 

            lda drawcount   //load up counter 
            sub one         //counter -- 
            sto drawcount   //and store 

            brz stop        //if zero then stop 

            bra drawloop    //otherwise go again 

stop        hlt             //finished drawing 

one         dat 1           //holds value for 1 
drawmax     dat 16          //holds counter initial value 
drawcount   dat 0           //holds counting for drawing loop 
boardload   lda row0        //opcode for loading first address 

row0        dat 32          //data for row 0 _123 
            dat 49 
            dat 50 
            dat 51 
row1        dat 65          //data for row 2 AOXO                 
            dat 79 
            dat 88 
            dat 79 
row2        dat 66          //data for row 3 BXOX 
            dat 88 
            dat 79 
            dat 88 
row3        dat 67          //data for row 4 COOX 
            dat 79 
            dat 79 
            dat 88 
