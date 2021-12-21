`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.02.2021 17:55:13
// Design Name: 
// Module Name: main
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


module main(
    input CLOCK,sw1,sw2,sw4,sw8,sw9,sw13,
    output [3:0] AN,
    output reg [6:0] seg = 0,
    output reg dp = 0,
    output [11:0] ld
    );
    
    wire clk_p37,clk_p75,clk_1p5,clk_3,clk_fast;
    
    clock_p37Hz(CLOCK,clk_p37);
    clock_p75Hz(CLOCK,clk_p75);
    clock_1p5Hz(CLOCK,clk_1p5);
    clock_3Hz(CLOCK,clk_3);
    clock_fast(CLOCK,clk_fast);
    
    reg [3:0] tasks = 0;
    reg [6:0] counter = 0;
    
    reg [11:0] led = 0;
    reg [11:0] led1 = 4095;
    reg [11:0] led2 = 4095;
    
    assign ld = (tasks[0] == 0) ? led : (tasks[1] == 0) ? led1 : led2;
    
    //tasks[0]: filling
    always @(posedge clk_3)
    begin
        if (tasks[0] == 0)
        begin
            counter <= counter + 1;
        end
    end
    
    always @(posedge clk_fast)
    begin
        if (tasks[0] == 0)
        begin
            case(counter)
            0:  begin
                led <= 12'b10_00000_00000;
                end
            1:  begin
                led <= 12'b01_00000_00000;
                end
            2:  begin
                led <= 12'b00_10000_00000;
                end
            3:  begin
                led <= 12'b00_01000_00000;
                end
            4:  begin
                led <= 12'b00_00100_00000;
                end
            5:  begin
                led <= 12'b00_00010_00000;
                end
            6:  begin
                led <= 12'b00_00001_00000;
                end
            7:  begin
                led <= 12'b00_00000_10000;
                end
            8:  begin
                led <= 12'b10_00000_01000;
                end
            9:  begin
                led <= 12'b01_00000_00100;
                end
            10: begin
                led <= 12'b00_10000_00010;
                end
            11: begin
                led <= 12'b00_01000_00001;
                end
            12: begin
                led <= 12'b00_00100_00001;
                end
            13: begin
                led <= 12'b00_00010_00001;
                end
            14: begin
                led <= 12'b00_00001_00001;
                end
            15: begin
                led <= 12'b00_00000_10001;
                end
            16: begin
                led <= 12'b10_00000_01001;
                end
            17: begin
                led <= 12'b01_00000_00101;
                end
            18: begin
                led <= 12'b00_10000_00011;
                end
            19: begin
                led <= 12'b00_01000_00011;
                end
            20: begin
                led <= 12'b00_00100_00011;
                end
            21: begin
                led <= 12'b00_00010_00011;
                end
            22: begin
                led <= 12'b00_00001_00011;
                end
            23: begin
                led <= 12'b00_00000_10011;
                end
            24: begin
                led <= 12'b10_00000_01011;
                end
            25: begin
                led <= 12'b01_00000_00111;
                end
            26: begin
                led <= 12'b00_10000_00111;
                end
            27: begin
                led <= 12'b00_01000_00111;
                end
            28: begin
                led <= 12'b00_00100_00111;
                end
            29: begin
                led <= 12'b00_00010_00111;
                end
            30: begin
                led <= 12'b00_00001_00111;
                end
            31: begin
                led <= 12'b00_00000_10111;
                end
            32: begin
                led <= 12'b10_00000_10111;
                end
            33: begin
                led <= 12'b01_00000_01111;
                end
            34: begin
                led <= 12'b00_10000_01111;
                end
            35: begin
                led <= 12'b00_01000_01111;
                end
            36: begin
                led <= 12'b00_00100_01111;
                end
            37: begin
                led <= 12'b00_00010_01111;
                end
            38: begin
                led <= 12'b00_00001_01111;
                end
            39: begin
                led <= 12'b00_00000_11111;
                end
            40: begin
                led <= 12'b10_00000_11111;
                end
            41: begin
                led <= 12'b01_00000_11111;
                end
            42: begin
                led <= 12'b00_10000_11111;
                end
            43: begin
                led <= 12'b00_01000_11111;
                end
            44: begin   
                led <= 12'b00_00100_11111;
                end
            45: begin
                led <= 12'b00_00010_11111;
                end
            46: begin  
                led <= 12'b00_00001_11111;
                end
            47: begin   
                led <= 12'b00_00001_11111;
                end
            48: begin
                led <= 12'b10_00001_11111;
                end
            49: begin
                led <= 12'b01_00001_11111;
                end
            50: begin
                led <= 12'b00_10001_11111;
                end
            51: begin
                led <= 12'b00_01001_11111;
                end
            52: begin
                led <= 12'b00_00101_11111;
                end
            53: begin
                led <= 12'b00_00011_11111;
                end
            54: begin
                led <= 12'b00_00011_11111;
                end
            55: begin
                led <= 12'b00_00011_11111;
                end
            56: begin
                led <= 12'b10_00011_11111;
                end
            57: begin
                led <= 12'b01_00011_11111;
                end
            58: begin
                led <= 12'b00_10011_11111;
                end
            59: begin
                led <= 12'b00_01011_11111;
                end
            60: begin
                led <= 12'b00_00111_11111;
                end
            61: begin
                led <= 12'b00_00111_11111;
                end
            62: begin
                led <= 12'b00_00111_11111;
                end
            63: begin
                led <= 12'b00_00111_11111;
                end
            64: begin
                led <= 12'b10_00111_11111;
                end
            65: begin
                led <= 12'b01_00111_11111;
                end
            66: begin
                led <= 12'b00_10111_11111;
                end
            67: begin
                led <= 12'b00_01111_11111;
                end
            68: begin
                led <= 12'b00_01111_11111;
                end
            69: begin
                led <= 12'b00_01111_11111;
                end
            70: begin
                led <= 12'b00_01111_11111;
                end
            71: begin
                led <= 12'b00_01111_11111;
                end
            72: begin
                led <= 12'b10_01111_11111;
                end
            73: begin
                led <= 12'b01_01111_11111;
                end
            74: begin  
                led <= 12'b00_11111_11111;
                end
            75: begin
                led <= 12'b00_11111_11111;
                end
            76: begin
                led <= 12'b00_11111_11111;
                end
            77: begin
                led <= 12'b00_11111_11111;
                end
            78: begin
                led <= 12'b00_11111_11111;
                end
            79: begin
                led <= 12'b00_11111_11111;
                end
            80: begin
                led <= 12'b10_11111_11111;
                end
            81: begin
                led <= 12'b01_11111_11111;
                end
            82: begin
                led <= 12'b01_11111_11111;
                end
            83: begin
                led <= 12'b01_11111_11111;
                end
            84: begin
                led <= 12'b01_11111_11111;
                end
            85: begin
                led <= 12'b01_11111_11111;
                end
            86: begin
                led <= 12'b01_11111_11111;
                end
            87: begin
                led <= 12'b01_11111_11111;
                end
            88: begin
                led <= 12'b11_11111_11111;
                tasks[0] = 1;
                end
            
            endcase   
        end
    end
    
    //tasks[1] blinking
    always @(posedge clk_p75)
    begin
        if (tasks[0] == 1 && tasks[1] == 0)
        begin
            led1[11] <= ~led1[11];
        end
    end
    
    //tasks[2] display
    assign AN = 4'b0001;
    reg [3:0] count = 0;
    
    always @(posedge clk_1p5)
    begin
        if (tasks[2] == 0 && tasks[0] == 1)
        begin
            count <= (count + 1) % 15;
        end
    end
    
    always @(posedge clk_fast)
    begin
        if (tasks[2] == 0 && tasks[0] == 1)
        begin
            case(count)
            0:  begin  //.
                dp <= 0;
                seg <= 7'b1111111;
                end
            1:  begin  //w
                dp <= 1;
                seg <= 7'b1010101;
                end
            2:  begin  //a
                dp <= 1;
                seg <= 7'b0001000;
                end
            3:  begin  //r
                dp <= 1;
                seg <= 7'b0101111;
                end
            4:  begin  //n
                dp <= 1;
                seg <= 7'b0101011;
                end
            5:  begin  //i
                dp <= 1;
                seg <= 7'b1001111;
                end
            6:  begin  //n
                dp <= 1;
                seg <= 7'b0101011;
                end
            7:  begin  //g
                dp <= 1;
                seg <= 7'b0010000;
                end
            8:  begin  //-
                dp <= 1;
                seg <= 7'b0111111;
                end
            9:  begin  //n
                dp <= 1;
                seg <= 7'b0101011;
                end
            10: begin  //o
                dp <= 1;
                seg <= 7'b1000000;
                end
            11: begin  //t
                dp <= 1;
                seg <= 7'b0000111;
                end
            12: begin  //i
                dp <= 1;
                seg <= 7'b1001111;
                end
            13: begin  //c
                dp <= 1;
                seg <= 7'b1000110;
                end
            14: begin  //e
                dp <= 1;
                seg <= 7'b0000110;
                end
                           
            endcase
        end
        else
        begin
            dp <= 1;
            seg <= 7'b1111111;
        end
    end
    
    reg [5:0] password = 0;
    
    always @(posedge clk_fast)
    begin  //sw1,2,4,8,9,13
        if (sw1 == 1) password[0] = 1;
        if (sw2 == 1) password[1] = 1;
        if (sw4 == 1) password[2] = 1;
        if (sw8 == 1) password[3] = 1;
        if (sw9 == 1) password[4] = 1;
        if (sw13 == 1) password[5] = 1;
        if (password == 6'b111111) tasks[1] = 1;
    end
    
    //tasks[3] empty
    reg [3:0] c = 0;
    
    always @(posedge clk_1p5)
    begin
        if (tasks[0] == 1 && tasks[1] == 1 && tasks[3] == 0)
        begin
            c <= c + 1;
        end
    end
    
    always @(posedge clk_fast)
    begin
        if (tasks[0] == 1 && tasks[1] == 1 && tasks[3] == 0)
        begin
            case(c)
            0:  begin
                led2 <= 12'b01_11111_11111;
                end
            1:  begin
                led2 <= 12'b00_11111_11111;
                end
            2:  begin
                led2 <= 12'b00_01111_11111;
                end
            3:  begin
                led2 <= 12'b00_00111_11111;
                end
            4:  begin
                led2 <= 12'b00_00011_11111;
                end
            5:  begin
                led2 <= 12'b00_00001_11111;
                end
            6:  begin  
                led2 <= 12'b00_00000_11111;
                end
            7:  begin
                led2 <= 12'b00_00000_01111;
                end
            8:  begin
                led2 <= 12'b00_00000_00111;
                end
            9:  begin
                led2 <= 12'b00_00000_00011;
                end
            10: begin
                led2 <= 12'b00_00000_00001;
                end
            11: begin
                led2 <= 12'b00_00000_00000;
                tasks[3] = 1; tasks[2] = 1;
                end
            endcase
        end
    end
    
endmodule
