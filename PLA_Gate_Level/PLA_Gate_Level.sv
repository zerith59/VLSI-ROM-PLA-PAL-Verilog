`timescale 1ns/1ps

module PLA_Gate_Level(
    input A, B, C, D,
    output Y1, Y2
);

    wire nA, nB, nC, nD;

    wire P1, P2, P3, P4;

    // NOT gates
    not(nA, A);
    not(nB, B);
    not(nC, C);
    not(nD, D);

    // Programmable AND plane

    // Common term
    // P1 = A'C'D
    and(P1, nA, nC, D);

    // Common term
    // P2 = A'B'D'
    and(P2, nA, nB, nD);

    // For Y1
    // P3 = B'C'D
    and(P3, nB, nC, D);

    // For Y2
    // P4 = B'C'
    and(P4, nB, nC);

    // Programmable OR plane

    // Y1 = A'C'D + A'B'D' + B'C'D
    or(Y1, P1, P2, P3);

    // Y2 = A'C'D + A'B'D' + B'C'
    or(Y2, P1, P2, P4);

endmodule