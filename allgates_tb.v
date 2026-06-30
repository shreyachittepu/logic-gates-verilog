//Testbench file of all the logic gates - allgates_tb.v

`timescale 1ns / 1ps

module allgates_tb;

    // Inputs
    reg a, b;

    // Outputs
    wire yand, ynand, yor, ynor, yxor, yxnor, ynota, ynotb;

    // Instantiate the module under test
    allgates dut(
        .a(a),
        .b(b),
        .yand(yand),
        .ynand(ynand),
        .yor(yor),
        .ynor(ynor),
        .yxor(yxor),
        .yxnor(yxnor),
        .ynota(ynota),
        .ynotb(ynotb)
    );

     // Initial stimulus
    initial begin
        // Initialize inputs
        a = 0;
        b = 0;

        // Monitor outputs
        $monitor("Time=%0t a=%b b=%b yand=%b ynand=%b yor=%b ynor=%b yxor=%b yxnor=%b ynota=%b ynotb=%b",
                 $time, a, b, yand, ynand, yor, ynor, yxor, yxnor, ynota, ynotb);

        // Apply various input combinations
        #20 a = 0; b = 0; // Test case 1
        #20 a = 0; b = 1; // Test case 2
        #20 a = 1; b = 0; // Test case 3
        #20 a = 1; b = 1; // Test case 4

        // End simulation
        #20 $finish;
    end

endmodule
