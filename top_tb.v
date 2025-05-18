module top_tb();
reg hclk;
reg hresetn;

wire [31:0] hr_data,haddr,hwdata,pr_data,paddr,pwdata,paddr_out,pwdata_out;
wire hwrite,hready_in;
wire [1:0] htrans;
wire [1:0] hres=0;
wire penable, pwrite,hr_readyout,pwrite_out,penable_out;
wire [2:0]psel,psel_out;


ahb_master AHB (hclk,hresetn,hr_readyout,hr_data,haddr,hwdata,hwrite,hready_in,htrans);

bridge_top BRIDGE (hclk,hresetn,hwrite,hready_in,htrans,hwdata,haddr,pr_data,penable,
                 pwrite,hr_readyout,psel,hres,paddr,pwdata,hr_data);

apb_interface APB (pwrite,penable,psel,paddr,pwdata,pwrite_out,penable_out,
                  psel_out,paddr_out,pwdata_out,pr_data);

initial
begin
hclk=1'b0;
forever #10 hclk=~hclk;
end

task reset;
begin
@(negedge hclk);
hresetn=1'b0;
@(negedge hclk);
hresetn=1'b1;
end
endtask


initial
begin
reset;
//AHB.single_write();
AHB.single_read();
//AHB.burst_4_incr_write()
#200 $finish;

end
endmodule
