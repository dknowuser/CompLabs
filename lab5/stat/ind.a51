						 clr	p3.2
m2:	 mov 	p1,#0c0h
	 mov	p3,#0fch    ; 1111 1100
	 setb	p3.2
	 clr	p3.2
	 
	 mov 	p1,#0f9h
	 mov	p3,#0fdh    ; 1111 1101
	 setb	p3.2
	 clr	p3.2
	    	
	 mov 	p1,#0a4h
	 mov	p3,#0feh    ; 1111 1110
	 setb	p3.2
	 clr	p3.2
	 
	 mov 	p1,#0b0h
	 mov	p3,#0ffh    ; 1111 1111
	 setb	p3.2
	 clr	p3.2
	 	 	  	 
	 ljmp m2
	 end