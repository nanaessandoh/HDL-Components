`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module test_d_flip_flop;

// Declare variables 
reg tb_clk;
reg tb_rstb;
reg tb_d;
reg tb_q;


// Instantiate the design
d_flip_flop DF1 (   .clk(tb_clk),
                    .rstb(tb_rstb),
                    .d(tb_d),
                    .q(tb_q));


// Generate Clock
always #2 tb_clk = - clk;

initial     
    begin

        tb_rstb <= 1'b0;
        tb_d <= 1'b0;


    #4  tb_rstb <= 1'b1;
        tb_d <= 1'b1;

    #8  tb_rstb <= 1'b1;
        tb_d <= 1'b1;

    #12 tb_rstb <= 1'b1;
        tb_d <= 1'b1;

    #16 tb_rstb <= 1'b1;
        tb_d <= 1'b1;

    #20 $finish 
end
    
endmodule