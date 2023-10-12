module top;
string name,name1;
int b;
initial begin 
	name = "system verilog";
//	$display("name=%s",name);
	 $display("name=%s , name=%0d",name,name.len());
	 name.putc(5,"x");
	 $display("name=%s , name=%0d",name,name.len());

	 $display("char in asci value =%0d",name.getc(6));
	name1=name;
	$display("name= %s",name);
	$display("name1= %s",name1);
	$display("name= %s",name.touppre());
	$display("name1= %s",name1.toupper());
b = name.compare(name1);
	$display("b=%0d",b);

end 
endmodule


