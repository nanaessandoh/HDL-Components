module d_flip_flop(
        input   clk,
                rstb,
                d,
        output reg q;
);
    
always @(posedge clk or posedge rstb) begin
    if (!rstb)
        q <= 1'b0 ;
    else 
        q <= d;
    
end
endmodule