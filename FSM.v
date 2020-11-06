module fsm (Start, Reset, F, G,Clock);
parameter Idle = 2'b00,
Go1 = 2'b01,
Go2 = 2'b10;
reg [1:0] State;
input Start, Reset, Clock;
output reg F,G;
always @(posedge Clock or posedge Reset)
if (Reset)
begin
State <= Idle;
F <= 0;
G <= 0;
end
else
case (State)
Idle : if (Start)
begin
State <= Go1;
F <= 1;
end
Go1 : begin
State <= Go2;
F <= 0;
G <= 1;
end
Go2 : begin
State <= Idle;
G <= 0;
end
endcase
endmodule
