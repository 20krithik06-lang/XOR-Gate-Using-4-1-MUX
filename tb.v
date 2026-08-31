module tb_xor_using_mux;

reg A, B;
wire Y;

xor_using_mux uut (
    .A(A),
        .B(B),
            .Y(Y)
            );

            initial begin
                $dumpfile("xor_mux.vcd");
                    $dumpvars(0, tb_xor_using_mux);

                        A = 0; B = 0; #10;
                            A = 0; B = 1; #10;
                                A = 1; B = 0; #10;
                                    A = 1; B = 1; #10;

                                        $finish;
                                        end

                                        initial
                                            $monitor("A=%b B=%b Y=%b", A, B, Y);

                                            endmodule