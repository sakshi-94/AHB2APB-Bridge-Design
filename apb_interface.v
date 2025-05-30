module apb_interface ( input pwrite,penable,input [2:0] psel,input [31:0] paddr,pwdata,
         output pwrite_out,penable_out, output [2:0] psel_out, output [31:0] paddr_out, pwdata_out, output reg [31:0] prdata);

assign pwrite_out=pwrite;
assign penable_out=penable;
assign psel_out=psel;
assign paddr_out=paddr;
assign pwdata_out=pwdata;

//prdata
always@(*)
begin
if(pwrite ==1'b0 && penable ==1'b1)
prdata= ($random)%256;
else
prdata= 32'h0000_0000;
end
endmodule
