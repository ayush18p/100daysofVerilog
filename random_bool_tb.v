module random_bool_tb();
reg a,b,c,d;
wire out;
random_bool dut(a,b,c,d,out);
initial begin
a=0;b=0;c=0;d=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,out=%b",a,b,c,d,out);
a=1;b=0;c=0;d=0;
#10;
$display("a=%b,b=%b,c=%b,d=%b,out=%b",a,b,c,d,out);
a=1;b=1;c=1;d=1;
#10
$display("a=%b,b=%b,c=%b,d=%b,out=%b",a,b,c,d,out);
end
initial begin
#40;
$finish();
end
endmodule