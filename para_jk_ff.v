module jk_ff (
    input J, K, clk, rst,
    output reg Q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        Q <= 0;
    else begin
        case ({J, K})
            2'b00: Q <= Q;       // HOLD
            2'b01: Q <= 0;       // RESET
            2'b10: Q <= 1;       // SET
            2'b11: Q <= ~Q;      // TOGGLE
        endcase
    end
end

endmodule
