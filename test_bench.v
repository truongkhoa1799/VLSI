module test_bench();
    reg clk, reset, flick;
    wire [15:0]LED;
    //wire [1:0]state;
    //wire [2:0]current_index;
    
    initial begin
       $recordfile("waves");
       $recordvars("depth=0",test_bench);
    end

    initial begin
        $display("----------------------------------------------------------------");
        $display();
    end

    initial begin
        #0 clk <= 1'b0;
        #0 flick <= 1'b0;
        #0 reset <= 1'b1;

        #2 reset <= 1'b0;
        #2 reset <= 1'b1;

        #2 flick <= 1'b1;
        #2 flick <= 1'b0;

        #600 flick <= 1'b1;
        #2 flick <= 1'b0;

        #10 flick <= 1'b1;
        #2 flick <= 1'b0;

        #5 reset <= 1'b0;
        #0 flick <= 1'b1;
        #4 flick <= 1'b0;
        #50 reset <= 1'b1;

        #2 flick <= 1'b1;
        #1 flick <= 1'b0;

        #50 flick <= 1'b1;
        #1 flick <= 1'b0;
        
        #159 flick <= 1'b1;
        #1 flick <= 1'b0;

        
        #47 flick <= 1'b1;
        #1 flick <= 1'b0;

        #375 flick <= 1'b1;
        #2 flick <= 1'b0;

        #358 flick <= 1'b1;
        #2 flick <= 1'b0;

        #190 flick <= 1'b1;
        #2 flick <= 1'b0;

        #143 flick <= 1'b1;
        #2 flick <= 1'b0;

        #38 reset <= 1'b0;
        #20 flick <= 1'b1;
        #2 flick <= 1'b0;
        #50 reset <= 1'b1;

        #20 flick <= 1'b1;
        #2 flick <= 1'b0;

        #270 flick <= 1'b1;
        #1 flick <= 1'b0;

        #180 flick <= 1'b1;
        #1 flick <= 1'b0;

        #180 flick <= 1'b1;
        #1 flick <= 1'b0;

        #2000 $finish;
    end

    initial begin 
        forever #5 clk = !clk; 
    end

    Bound_Flasher testbench(   
        .clk(clk), 
        .reset(reset), 
        .flick(flick), 
        .LED(LED)
        // .current_state(state),
        // .current_index(current_index)
        // .pulse_flick(pulse_flick)
    );
endmodule
