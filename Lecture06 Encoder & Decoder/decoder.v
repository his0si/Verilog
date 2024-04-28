`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/26 11:28:11
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(En,w1,w0,y);

input En,w1,w0;
output reg [0:3] y;                                   
                                                         
always @(En) begin                                        
if (En==0) begin
    y=4'b0000;                                                                   
end      
                                                
else begin
    if ((w1==0)&(w0==0)) begin     
    y=4'b1000;                           
    end                                 
    
    else if ((w1==0)&(w0==1)) begin  
    y=4'b0100;                  
    end
    
    else if ((w1==1)&(w0==0)) begin  
    y=4'b0010;                  
    end       
    else begin  
    y=4'b0001;                  
    end                                                     
end

end
endmodule
