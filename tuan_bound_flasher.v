// Code your design here
module MAIN(clk, reset, flick, LED, state, current_index);
  input clk, reset, flick;
  output reg [15:0]LED;
  output reg [1:0]state;
  output reg [3:0]current_index;

  reg [3:0]max_array[5:0];
  reg [3:0]min_array[5:0];

  wire [3:0]max_value;
  wire [3:0]min_value;

  wire change_state;
  
  parameter IDLE = 2'b00, UP = 2'b01, DOWN = 2'b10;
  parameter POSITION_LED5 = 4'd5, POSITION_LED0 = 4'd0;
  parameter MAX_STEP = 5;

  initial begin
    max_array[0] <= 4'd15;
    max_array[1] <= 4'd0;
    max_array[2] <= 4'd10;
    max_array[3] <= 4'd0;
    max_array[4] <= 4'd5;
    max_array[5] <= 4'd0; 

    min_array[0] <= 4'd0;
    min_array[1] <= 4'd5;
    min_array[2] <= 4'd0;
    min_array[3] <= 4'd0;
    min_array[4] <= 4'd0;
    min_array[5] <= 4'd0;
  end

  
  assign max_value = max_array[current_index];
  assign min_value = min_array[current_index];
  
  // flick active-low
  

  always@(posedge clk, negedge reset, negedge change_state) begin
    if (!reset) begin
      state 		<= IDLE;
      LED 			<= 16'd0;
      current_index <= 4'd0;
    end
    else
      case (state)
      IDLE: begin
        if (!change_state)
          state <= UP;
      end
      DOWN: begin
        if(!change_state)
          if (LED == POSITION_LED5 || LED == POSITION_LED0) begin
            state 			<= UP;
            current_index 	<= current_index - 1;
          end
        else if (clk) begin
          LED = LED - 1;
          if ( LED == min_value ) begin 
            if (current_index == MAX_STEP) begin
              state 		<= IDLE;
              LED 			<= 16'd0;
              current_index <= 4'd0;
            end
            else begin
              state <= UP;
              current_index <= current_index + 1;
            end
          end
        end
      end
      UP: begin
        if (clk) begin
          LED = LED + 1;
          if ( LED == max_value ) begin 
            if (current_index == MAX_STEP) begin
              state 		<= IDLE;
              LED 			<= 16'd0;
              current_index <= 4'd0;
            end
            else begin
              state 			<= DOWN;
              current_index 	<= current_index + 1;
            end
          end
        end
      end
      endcase
  end

endmodule
