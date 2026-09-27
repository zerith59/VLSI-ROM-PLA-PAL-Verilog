`timescale 1ns/1ps

module ROM_Gate_Level(
    input A, B, C, D,
    output Y1
);

    wire nA, nB, nC, nD;
    wire P1, P2, P3;

    // NOT gates
    not(nA, A);
    not(nB, B);
    not(nC, C);
    not(nD, D);

    // Simplified SOP:
    // Y1 = A'C'D + B'C'D + A'B'D'

    and(P1, nA, nC, D);       // A'C'D
    and(P2, nB, nC, D);       // B'C'D
    and(P3, nA, nB, nD);      // A'B'D'

    or(Y1, P1, P2, P3);

endmodule