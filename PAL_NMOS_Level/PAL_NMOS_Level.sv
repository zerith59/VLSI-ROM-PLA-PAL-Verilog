`timescale 1ns/1ps

module PAL_NMOS(
    input A, B, C, D,
    output Y1, Y2
);

    supply0 GND;

    wire nA, nB, nC, nD;

    // ========================
    // Input Inverters
    // ========================

    pullup(nA);
    nmos(nA, GND, A);

    pullup(nB);
    nmos(nB, GND, B);

    pullup(nC);
    nmos(nC, GND, C);

    pullup(nD);
    nmos(nD, GND, D);


    // ========================
    // Y1 Product Terms
    // ========================

    wire P1, P2, P3;


    // P1 = A'C'D
    pullup(P1);

    nmos(P1, GND, A);
    nmos(P1, GND, C);
    nmos(P1, GND, nD);


    // P2 = B'C'D
    pullup(P2);

    nmos(P2, GND, B);
    nmos(P2, GND, C);
    nmos(P2, GND, nD);


    // P3 = A'B'D'
    pullup(P3);

    nmos(P3, GND, A);
    nmos(P3, GND, B);
    nmos(P3, GND, D);


    // ========================
    // Y2 Product Terms
    // ========================

    wire Q1, Q2, Q3;


    // Q1 = B'C'
    pullup(Q1);

    nmos(Q1, GND, B);
    nmos(Q1, GND, C);


    // Q2 = A'C'D
    pullup(Q2);

    nmos(Q2, GND, A);
    nmos(Q2, GND, C);
    nmos(Q2, GND, nD);


    // Q3 = A'B'D'
    pullup(Q3);

    nmos(Q3, GND, A);
    nmos(Q3, GND, B);
    nmos(Q3, GND, D);


    // ========================
    // Fixed OR Plane for Y1
    // ========================

    wire Y1_bar;

    pullup(Y1_bar);

    nmos(Y1_bar, GND, P1);
    nmos(Y1_bar, GND, P2);
    nmos(Y1_bar, GND, P3);

    pullup(Y1);
    nmos(Y1, GND, Y1_bar);


    // ========================
    // Fixed OR Plane for Y2
    // ========================

    wire Y2_bar;

    pullup(Y2_bar);

    nmos(Y2_bar, GND, Q1);
    nmos(Y2_bar, GND, Q2);
    nmos(Y2_bar, GND, Q3);

    pullup(Y2);
    nmos(Y2, GND, Y2_bar);

endmodule