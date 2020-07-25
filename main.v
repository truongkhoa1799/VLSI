module Bound_Flasher(clk, reset, flick, LED);
input clk, reset, flick;
output [15:0]LED;

reg [1:0]current_state;
reg [2:0]current_index;

reg [1:0]next_state;
reg [2:0]next_index;
reg [4:0]next_LED;
reg [4:0]current_LED;

wire [2:0]flick_index;
wire [4:0]flick_led;
wire [1:0]flick_state;
wire flick_trigger;

reg [4:0]max_array[5:0];
reg [4:0]min_array[5:0];

reg [4:0]flick_pos[1:0];
reg [3:0]final_index;

// reg pulse_flick;
//reg temp;
//reg temp_pulse;

wire [4:0]max_value;
wire [4:0]min_value;

parameter IDLE = 2'b00, GO_UP = 2'b01, GO_DOWN = 2'b10, BEGIN = 2'b11;

assign max_value = max_array[current_index];
assign min_value = min_array[current_index];
assign LED = (16'd1 << current_LED) - 1;

assign flick_trigger = (current_state == IDLE || ( current_state == GO_DOWN & current_index != final_index & (current_LED == flick_pos[0] || current_LED == flick_pos[1]) )) ? flick : 0;

assign flick_index = (current_state == IDLE) ? 2'd0 : ( current_index - 1 );
assign flick_led = (current_state == IDLE) ? 5'd1 : ( current_LED + 1);
assign flick_state = GO_UP;

always@( * ) begin
    if (reset) begin
        case (current_state)
            BEGIN: begin
                max_array[0] = 5'd16;
                max_array[1] = 5'd0;
                max_array[2] = 5'd11;
                max_array[3] = 5'd0;
                max_array[4] = 5'd6;
                max_array[5] = 5'd0; 

                min_array[0] = 5'd0;
                min_array[1] = 5'd6;
                min_array[2] = 5'd0;
                min_array[3] = 5'd0;
                min_array[4] = 5'd0;
                min_array[5] = 5'd0; 

                flick_pos[0] = 5'd0;
                flick_pos[1] = 5'd6;

                final_index = 3'd6;

                next_LED = 5'd0;
                next_index = 3'd0;
                next_state = IDLE;
            end
            GO_UP: begin
                if (current_LED < max_value) begin
                    next_LED = current_LED + 1;
                    next_index = current_index;
                    next_state = current_state;
                end
                else if (current_LED == max_value) begin
                    next_state = GO_DOWN;
                    next_index = current_index + 1;
                    next_LED = current_LED;
                end
            end 
            GO_DOWN: begin
                if (current_LED > min_value) begin
                    next_LED = current_LED - 1;
                    next_index = current_index;
                    next_state = current_state;
                end
                else if (current_LED == min_value) begin
                    next_state = GO_UP;
                    next_index = current_index + 1;
                    next_LED = current_LED;
                end

                if ( next_index == final_index ) begin 
                    next_index = 3'd0;
                    next_state = IDLE;
                    next_LED = 5'd0;
                end
            end
        endcase    
    end
end


always@(posedge clk or negedge reset or posedge flick_trigger) begin
    if (!reset) begin
        current_state <= BEGIN;
        current_LED <= 5'd0;
        current_index <= 3'd0;
    end
    else if (flick_trigger) begin
        current_state <= flick_state;
        current_index <= flick_index;
        current_LED <= flick_led;
    end
    else begin
        current_state <= next_state;
        current_index <= next_index;
        current_LED <= next_LED;
    end
end

endmodule
