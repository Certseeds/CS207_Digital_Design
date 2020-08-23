`timescale 1ns / 1ps                                        
module MUX_Use(
input reset,                                                                                           
input selfClk,     
// һ����Ƶ���ź�,����ˢ��            
input clk1,
//�����һ�������ź�,����������                               
input clk2,                      
//�����л����ź�, 4hz                           
input [3:0]first,         
//mintue�ĵ�һ�͵ڶ�λ                                 
input [3:0]second,                                               
input message,   
//һ������                                           
output reg clkOut,
output reg MinReset
//, output reg count    
//������ź�,ʱ��    
,output reg [7:0] cal 
,output reg enCarry                    
    );    
//reg stop;                                                  
reg [3:0] firstCount;                                       
reg [3:0] secondCount;

//reg [5:0] cal;                                      
always @(posedge selfClk)     
begin 
if(selfClk)
begin
        if(~(first == firstCount && second == secondCount))
        begin
           if(~(cal == 8'b00111011))
           begin
               cal = cal +1'b1;
           end
           firstCount = first;                                   
           secondCount = second;
        end
//        if (cal == 6'b111011)
//        begin
//              cal =  6'b111011;
//        end
          //else 
          if(message)
          begin
              clkOut <= clk2;
              enCarry <= 1'b0;
                if(cal == 8'b00111011)
                // if(cal == 8'b00111011)
                begin
                    clkOut <= 0;
                 //   MinReset <= 1;
                end 
                else 
                begin
                   // MinReset <= 0;
                end
          end
          else if (~message)
            begin
                clkOut <= clk1;
                cal <= 8'b0;
                enCarry <= 1'b1;
               // MinReset <= 0;
            end  
end
end            
   
//always @(*)
//begin
//   // if(cal == 8'b00111011)
//    if(cal == 8'b00111011 || cal == 8'b00111100 || cal == 8'b00111101 || cal == 8'b00111110 || cal == 8'b00111111 || cal[6] || cal [7])
//    begin
//       MinReset = 1'b1;
//     // stop = 1'b1;
//    end
////    else if (stop &&MinReset )
////    begin
////        MinReset = 1'b0;
////    end
//    else
//    begin
//        MinReset = 1'b0;
//    end
//end        
//always @(MinReset)
//begin
//if (MinReset)
//end
//always @ (stop)
//begin
//    if(stop)
//    begin
//    MinReset <= 1'b1;
//    end
//end                                                                     
endmodule                                                   