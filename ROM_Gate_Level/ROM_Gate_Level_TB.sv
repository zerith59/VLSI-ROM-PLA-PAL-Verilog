`timescale 1ns/1ps

module tb_rom_gate;

    reg A, B, C, D;
    wire Y1;

    ROM_Gate_Level dut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y1(Y1)
    );

    integer i;

    initial begin

        $dumpfile("rom_gate.vcd");
        $dumpvars(0, tb_rom_gate);

        $display("ROM - Gate Level");
        $display("A B C D | Y1");
        $display("----------------");

        for(i = 0; i < 16; i = i + 1) begin

            {A,B,C,D} = i;
            #10;

            $display("%b %b %b %b |  %b",
                      A,B,C,D,Y1);

        end

        $finish;

    end

endmodule