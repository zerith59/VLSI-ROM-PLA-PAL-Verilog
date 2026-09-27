`timescale 1ns/1ps

module ROM_NMOS(
    input A, B, C, D,
    output Y1
);

    supply0 GND;

    wire nA, nB, nC, nD;

    // ========================
    // Pseudo-NMOS Inverters
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
    // Product Terms
    // ========================

    wire P1, P2, P3;


    // P1 = A'C'D
    // = ~(A + C + D')

    pullup(P1);

    nmos(P1, GND, A);
    nmos(P1, GND, C);
    nmos(P1, GND, nD);


    // P2 = B'C'D
    // = ~(B + C + D')

    pullup(P2);

    nmos(P2, GND, B);
    nmos(P2, GND, C);
    nmos(P2, GND, nD);


    // P3 = A'B'D'
    // = ~(A + B + D)

    pullup(P3);

    nmos(P3, GND, A);
    nmos(P3, GND, B);
    nmos(P3, GND, D);


    // ========================
    // OR Array
    // ========================

    wire Y1_bar;

    pullup(Y1_bar);

    nmos(Y1_bar, GND, P1);
    nmos(Y1_bar, GND, P2);
    nmos(Y1_bar, GND, P3);


    // Output inverter

    pullup(Y1);
    nmos(Y1, GND, Y1_bar);

endmodule