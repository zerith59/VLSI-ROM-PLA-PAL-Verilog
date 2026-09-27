`timescale 1ns/1ps

module PLA_NMOS(
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
    // AND Plane
    // ========================

    wire P1, P2, P3, P4;


    // P1 = A'C'D
    pullup(P1);

    nmos(P1, GND, A);
    nmos(P1, GND, C);
    nmos(P1, GND, nD);


    // P2 = A'B'D'
    pullup(P2);

    nmos(P2, GND, A);
    nmos(P2, GND, B);
    nmos(P2, GND, D);


    // P3 = B'C'D
    pullup(P3);

    nmos(P3, GND, B);
    nmos(P3, GND, C);
    nmos(P3, GND, nD);


    // P4 = B'C'
    pullup(P4);

    nmos(P4, GND, B);
    nmos(P4, GND, C);


    // ========================
    // Y1 OR Plane
    // Y1 = P1 + P2 + P3
    // ========================

    wire Y1_bar;

    pullup(Y1_bar);

    nmos(Y1_bar, GND, P1);
    nmos(Y1_bar, GND, P2);
    nmos(Y1_bar, GND, P3);

    pullup(Y1);
    nmos(Y1, GND, Y1_bar);


    // ========================
    // Y2 OR Plane
    // Y2 = P1 + P2 + P4
    // ========================

    wire Y2_bar;

    pullup(Y2_bar);

    nmos(Y2_bar, GND, P1);
    nmos(Y2_bar, GND, P2);
    nmos(Y2_bar, GND, P4);

    pullup(Y2);
    nmos(Y2, GND, Y2_bar);

endmodule