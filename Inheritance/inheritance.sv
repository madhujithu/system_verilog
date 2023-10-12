class sample;
	rand bit[7:0] addr;
	rand bit[7:0] data;
	rand bit wr_rd;
	string name= "vlsiguru";

function void print(string name="pkt");
	$display("\nprinting %s properties",name);
	$display("addr=%b",addr);
	$display("data=%b",data);
	$display("wr_rd=%b",wr_rd);
	$display("name=%b",name);

endfunction

constraint addr_c {
		addr<20;
			}
constraint  data_c{
		data inside{[10:20]};
		}
constraint  wr_rd_c{
			wr_rd == 1;
			}
endclass

class packet extends sample;
	rand bit[7:0]len;
	string name= "system_verilog";


function void print(string name="child_pkt");
	$display("\nprinting %s properties",name);
	$display("len=%b",len);
	$display("name of child=%s",this.name);
	$display("name of parent=%s",super.name);
endfunction
		constraint len_c{
		len == 5;
	}
endclass

module top;

	sample s= new();
	packet p= new();
initial begin
	assert(s.randomize());
	s.print("sample");//if not(sample) given then "pkt" default value will print
	p.randomize();
	p.print("packet");

end
endmodule
