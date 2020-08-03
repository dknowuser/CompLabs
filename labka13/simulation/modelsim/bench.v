
`timescale 1ns / 1ns
module bench  ; 
 
  wire    out   ; 
  reg  [3:0]  x   ; 
  labka13  
   DUT  ( 
       .out (out ) ,
      .x (x ) ); 

   reg [3 : 0] \VARx ;


// "Counter Pattern"(Range-Up) : step = 1 Range(0000-1111)
// Start Time = 0 ns, End Time = 1 us, Period = 50 ns
  initial
  begin
	\VARx = 4'b0000 ;
	 x  = 4'b0000  ;
	repeat(15)
	  begin
	  \VARx = \VARx  + 1 ;
	  #50  x  = \VARx  ;
	  end
	  #50 ;
// 800 ns, repeat pattern in loop.
	\VARx = 4'b0000 ;
	 x  = 4'b0000  ;
	repeat(3)
	  begin
	  \VARx = \VARx  + 1 ;
	  #50  x  = \VARx  ;
	  end
	  #50 ;
// 1 us, periods remaining till edit start time.
  end

  initial
	#2000 $stop;
endmodule
