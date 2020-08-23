`timescale 1ns / 1ps
primitive lab6_practice2_udp(
     output1,
     x,
     y,
     z
    );
    output output1;
    input x,y,z;
    table
    0 0 0 :0;
    1 0 0 :1;
    0 1 0 :1;
    0 0 1 :1;
    1 1 0 :0;
    1 0 1 :0;
    0 1 1 :0;
    1 1 1 :1;
    endtable
endprimitive