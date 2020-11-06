module testfsm;
reg s,r;
initial begin
r=0;
s=0;
#5 r =1;
#10 r=0;
#10 s=1;
#5 s=0;
#20 s=1;
#10 s=0;
end
ClockGen C (CLK);
fsm m1(s,r,o1,o2,CLK);
endmodule;
