//This is a code to model an n-bit address, m-bit word size, dual-port RAM 
module RAM #(
parameter n=4, 
parameter m=4)
(
input wire [n-1:0] addr_out,
input wire [n-1:0] addr_in,
input wire [m-1:0] data_in,
input wire r,
input w,
output reg [m-1:0] data_out
);
localparam entries=(1<<n);
reg [m-1:0] mem[0:entries-1];
always @(r or w or addr_in or addr_out or data_in)
	begin
	 if (w)
	 	mem[addr_in]<=data_in;

	 if (r) begin
	 	data_out<=mem[addr_out];
	 end
end
endmodule
