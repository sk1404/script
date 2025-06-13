`timescale 1ns/1ps
module jk_ff_tb;

reg J, K, clk, rst;
wire Q;

jk_ff uut (.J(J), .K(K), .clk(clk), .rst(rst), .Q(Q));

initial begin
    $display("Running JK Flip-Flop test cases...");
    clk = 0; rst = 1; J = 0; K = 0;
    #5 rst = 0;

    // HOLD Test (00)
    J = 0; K = 0;
    #5 clk = 1; #5 clk = 0;
    if (Q === 0) $display("HOLD Test Passed"); else $display("HOLD Test Failed");

    // SET Test (10)
    J = 1; K = 0;
    #5 clk = 1; #5 clk = 0;
    if (Q === 1) $display("SET Test Passed"); else $display("SET Test Failed");

    // RESET Test (01)
    J = 0; K = 1;
    #5 clk = 1; #5 clk = 0;
    if (Q === 0) $display("RESET Test Passed"); else $display("RESET Test Failed");

    // TOGGLE Test (11)
    J = 1; K = 1;
    #5 clk = 1; #5 clk = 0;
    if (Q === 1) $display("TOGGLE Test Passed"); else $display("TOGGLE Test Failed");

    $finish;
end

endmodule
