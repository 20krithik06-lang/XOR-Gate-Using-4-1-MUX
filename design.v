module mux4to1(
        input D0, D1, D2, D3,
            input S1, S0,
                output Y
                );

                assign Y = S1 ? (S0 ? D3 : D2) :
                           (S0 ? D1 : D0);

                           endmodule
module xor_using_mux(
        input A, B,
            output Y
            );

            mux4to1 M1 (
                .D0(1'b0),
                    .D1(1'b1),
                        .D2(1'b1),
                            .D3(1'b0),
                                .S1(A),
                                    .S0(B),
                                        .Y(Y)
                                        );

                                        endmodule
