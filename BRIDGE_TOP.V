BRIDGE TOP:-

module bridge_top(input hclk,hresetn,hwrite,hready_in,
input [1:0] htrans,input [31:0] haddr,hwdata,prdata,
output penable, pwrite, hr_readyout,output [2:0] psel,
output [1:0] hresp, output [31:0] paddr,pwdata,hrdata);
wire [31:0] hwdata_1,hwdata_2,haddr_1,haddr_2;
wire [2:0] temp_selx;
wire hwritereg,hwritereg_1;
wire valid;
ahb_slave_interface
a1(hclk,hresetn,hwrite,hready_in,htrans,haddr,hwdata,valid,hwritereg,hwritereg_1,
hresp,temp_selx,haddr_1,haddr_2,hwdata_1,hwdata_2,hrdata,prdata);
apb_controller
a2(hclk,hresetn,hwritereg,hwrite,valid,haddr,hwdata,hwdata_1,hwdata_2,haddr_1,haddr_2,prdat
a,
temp_selx,penable,pwrite,hr_readyout,psel,paddr,pwdata);
endmodule
