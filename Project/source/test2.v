`timescale 1ns / 1ps                                        
module MUX_Use(                                             
input reset,                                                
input selfClk,     
// 一个高频的信号,负责刷新            
//输入的一个正常信号,就是秒的输出                               
input clk2,                      
//快速切换的信号, 4hz                           
input first,         
//mintue的第一和第二位                                 
input second,                                               
input message,   
//一个开关                                           
output reg clkOut,
output reg MinReset
//, output reg count    
//输出的信号,时钟                               
    );    
reg resetIn;                                                  
reg [3:0] firstCount;                                       
reg [3:0] secondCount;
reg [5:0] cal;                                      
reg count;        
always @(posedge reset,posedge message)
begin
    if(reset)
    begin
      count <= 0;
      cal <= 0;
      resetIn <= 0;
      MinReset <= 0;
      clkOut <= 0;
    end
end                                          
always @(posedge selfClk)                     
begin                                                       
     firstCount <= first;                                   
     secondCount <= second;
     if(count == 0)
     begin
         clkOut <= 0;
     end  
     else if (count == 1)                               
     begin                                              
         clkOut <= clk2;                                       
     end                            
     if(resetIn)                                              
     begin                                                  
         count <= 0;
         cal <= 0;                                        
        // clkOut <= clk1;
         resetIn <= 0;                                    
     end                                                    
     if(message)                                        
     begin                                              
          count <= 1;
          cal <= 0;                     
       end     
                                                           
end                                                         
always @(posedge clk2)                                      
begin                                                       
    if(count == 1)                              
    begin 
        //clkOut <= clk2;
        cal <= cal+1;                                                  
        if(firstCount == 5 && secondCount == 9)                                                    
        begin                                               
            MinReset <= 1;                                   
        end
        if(cal == 59)
        begin
            resetIn <= 1;
        end                                                 
    end                                                     
end                                                         
                                                            
                                                            
                                                            
                                                            
endmodule                                                   