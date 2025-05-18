module ahb_master (input hclk,hresetn,hr_readyout,input [31:0]hr_data,
output reg [31:0] haddr,hwdata,output reg hwrite,hready_in,
output reg [1:0] htrans);

reg [2:0] hburst; //single,4,16,
reg [2:0] hsize;//size 8,16bit,
integer i=0;

task single_write();
begin

@(posedge hclk)
#1;
begin
hwrite=1;
htrans=2'd2;
hsize=0;
hburst=0;
hready_in=1;
haddr=32'h8000_0000;
end

@(posedge hclk)
#1;
begin
hwdata=32'h24;
htrans=2'd0;
end

end
endtask

task single_read();
begin
@(posedge hclk)
#1;
begin
hwrite=0;
htrans=2'd2;
hsize=0;
hburst=0;
hready_in=1;
haddr=32'h8000_0000;
end

@(posedge hclk)
#1;
begin
htrans= 2'd0;
end

end
endtask
endmodule
