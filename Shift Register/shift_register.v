module shift_register(
    input       clk,
                rstb,
                val_in,
    output reg [7:0] val_out;
);

// Declare regs
reg [7:0] val_Shift;

always @ (posedge clk or posedge rstb)

    if (rstb == 1'b1) begin  // asynchronous reset
        val_Shift <= 8'h00; // or 8'b00000000
    else begin
        val_Shift[7] <= val_in;
            for (i = 0; i < 7; i = i + 1) begin 
            val_Shift[i] <= val_Shift[i+1]; 
            end
    end
    end
    
endmodule