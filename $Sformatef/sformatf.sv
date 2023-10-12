module top;
string name1,name2;
initial begin
	for(int i=0;i<10;i++)begin
		$sformate(name,"env%0d",i);
		$display("env[%0d]=%0s",i,name1(i));
		name2=$sformatf("env=%0d",i);
		$display("env[%0d]=%s",i,name2);//copyd frm sir code
	end
end
endmodule


