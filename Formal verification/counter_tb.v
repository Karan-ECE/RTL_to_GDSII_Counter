module counter_tb;
reg clk;
reg rst;
wire [3:0]count;
	
	counter dut(.clk(clk),.rst(rst),.count(count));
		initial begin
		      forever #5 clk=~clk;
		end
	initial begin
		clk=0;
		rst=1;
		#10;
		rst=0;
		#150;
		rst=1;
		#10
		$finish;
	end
	initial begin 
		$monitor("Time=%0t | reset=%b | count=%b", $time, rst, count);
	end
endmodule 
