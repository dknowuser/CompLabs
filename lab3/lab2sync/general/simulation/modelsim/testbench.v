
`timescale 1ns / 1ns
module testbench  ; 

parameter data_bits  = 6 ; 
  wire  [data_bits-1:0]  Dout   ; 
  wire    Ready   ; 
  wire    Error   ; 
  reg    Start   ; 
  reg    Clk   ; 
  reg  [data_bits-1:0]  Din   ; 
  sync_general    #( data_bits  )
   DUT  ( 
       .Dout (Dout ) ,
      .Ready (Ready ) ,
      .Error (Error ) ,
      .Start (Start ) ,
      .Clk (Clk ) ,
      .Din (Din ) ); 

   reg [5 : 0] \VARDin ;


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 sec, Period = 100 ns
  initial
  begin
   repeat(10)
   begin
	   Clk  = 1'b1  ;
	  #50  Clk  = 1'b0  ;
	  #50 ;
// 1 us, repeat pattern in loop.
   end
  end


// "Counter Pattern"(Range-Up) : step = 1 Range(000000-111111)
// Start Time = 0 ns, End Time = 1 sec, Period = 700 ns
  initial
  begin
	\VARDin = 6'b000000 ;
	 Din  = 6'b000000  ;
	  #700 ;
// 700 ns, periods remaining till edit start time.
	  Din  = 6'b000001  ;
	 # 300 ;
// dumped values till 1 us
  end


// "Clock Pattern" : dutyCycle = 50
// Start Time = 0 ns, End Time = 1 sec, Period = 89600 ns
  initial
  begin
	  Start  = 1'b1  ;
	 # 1000 ;
// dumped values till 1 us
  end

  initial
	#2000 $stop;
endmodule
