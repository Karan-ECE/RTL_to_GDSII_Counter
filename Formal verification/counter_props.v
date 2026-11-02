module counter_props (
    input logic       clk,
    input logic       rst,
    input logic [3:0] count
);

    // 1. Counter must be zero when reset is asserted
    property p_reset;
        @(posedge clk)
        rst |=> count == 4'b0000;
    endproperty

    assert property (p_reset);


    // 2. Counter increments by 1 when reset is not asserted
    property p_increment;
        @(posedge clk)
        !rst |=> count == $past(count) + 4'b0001;
    endproperty

    assert property (p_increment);


    // 3. Counter should wrap from 15 to 0
    property p_overflow;
        @(posedge clk)
        (!rst && count == 4'hF) |=> count == 4'h0;
    endproperty

    assert property (p_overflow);

endmodule

