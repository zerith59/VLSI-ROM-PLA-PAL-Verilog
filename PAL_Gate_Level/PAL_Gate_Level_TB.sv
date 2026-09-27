`timescale 1ns/1ps

module tb_pal_gate;

    reg A, B, C, D;
    wire Y1, Y2;

    PAL_Gate_Level dut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y1(Y1),
        .Y2(Y2)
    );

    integer i;

    initial begin

        $dumpfile("pal_gate.vcd");
        $dumpvars(0, tb_pal_gate);

        $display("PAL - Gate Level");
        $display("A B C D | Y1 Y2");
        $display("-----------------");

        for(i = 0; i < 16; i = i + 1) begin

            {A,B,C,D} = i;
            #10;

            $display("%b %b %b %b |  %b  %b",
                     A,B,C,D,Y1,Y2);

        end

        $finish;

    end

endmodule