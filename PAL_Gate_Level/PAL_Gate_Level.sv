`timescale 1ns/1ps

module PAL_Gate_Level(
    input A, B, C, D,
    output Y1, Y2
);

    wire nA, nB, nC, nD;

    wire P1, P2, P3;
    wire Q1, Q2, Q3;

    // NOT gates
    not(nA, A);
    not(nB, B);
    not(nC, C);
    not(nD, D);


    // =========================
    // Y1 Product Terms
    // =========================

    // P1 = A'C'D
    and(P1, nA, nC, D);

    // P2 = B'C'D
    and(P2, nB, nC, D);

    // P3 = A'B'D'
    and(P3, nA, nB, nD);


    // =========================
    // Y2 Product Terms
    // =========================

    // Q1 = B'C'
    and(Q1, nB, nC);

    // Q2 = A'C'D
    and(Q2, nA, nC, D);

    // Q3 = A'B'D'
    and(Q3, nA, nB, nD);


    // Fixed OR plane

    or(Y1, P1, P2, P3);
    or(Y2, Q1, Q2, Q3);

endmodule