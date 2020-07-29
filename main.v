module Bound_Flasher(clk, reset, flick, LED/*, current_state, current_index*/);
input clk, reset, flick;
output reg [15:0]LED;

/*output*/ reg [1:0]current_state;
/*output*/ reg [2:0]current_index;

reg [1:0]next_state;
reg [2:0]next_index;
reg [15:0]next_LED;

wire [2:0]flick_index;
wire [4:0]flick_led;
wire [1:0]flick_state;
wire flick_trigger;

reg [15:0]max_array[5:0];
reg [15:0]min_array[5:0];

reg [15:0]flick_pos[1:0];
reg [3:0]final_index;

//-----------------------------------------------------------------------//
//                     States used for this program                      //
//-----------------------------------------------------------------------//
parameter IDLE = 2'b00, GO_UP = 2'b01, GO_DOWN = 2'b10, BEGIN = 2'b11;

//-----------------------------------------------------------------------//
//                  Check flick trigger Combinational Logic              //
//-----------------------------------------------------------------------//
assign flick_trigger = ( ( current_state == IDLE && reset ) || 
                         ( current_state == GO_DOWN && current_index != ( final_index - 1 ) && (LED == flick_pos[0] || LED == flick_pos[1]) )
                       ) ? flick : 0;

//-----------------------------------------------------------------------//
//          Calculating input for normal flow Combinational Logic        //
//-----------------------------------------------------------------------//
always@( * ) begin
    if (reset) begin
        case (current_state)
            BEGIN: begin
                max_array[0] = 16'b1111111111111111;
                max_array[1] = 16'd0;
                max_array[2] = 16'b0000011111111111;
                max_array[3] = 16'd0;
                max_array[4] = 16'b0000000000111111;
                max_array[5] = 16'd0; 

                min_array[0] = 16'd0;
                min_array[1] = 16'b0000000000111111;
                min_array[2] = 16'd0;
                min_array[3] = 16'd0;
                min_array[4] = 16'd0;
                min_array[5] = 16'd0; 

                flick_pos[0] = 16'd0;
                flick_pos[1] = 16'b0000000000111111;

                final_index = 3'd6;

                next_LED = 16'd0;
                next_index = 3'd0;
                next_state = IDLE;
            end
            IDLE: begin
                next_LED = 16'd0;
                next_index = 3'd0;
                next_state = IDLE;
            end
            GO_UP: begin
                if ( LED == max_array[current_index] ) begin
                    next_state = GO_DOWN;
                    next_index = current_index + 1;
                    next_LED = ( LED >> 1'd1 );
                end
                else begin
                    next_LED = ( LED << 1'd1 )  | 1'd1;
                    next_index = current_index;
                    next_state = current_state;
                end
            end 
            GO_DOWN: begin
                if ( LED == min_array[current_index] ) begin
                    next_state = GO_UP;
                    next_index = current_index + 1;
                    
                    if ( next_index == final_index ) begin 
                        next_index = 3'd0;
                        next_state = IDLE;
                        next_LED = 16'd0;
                    end
                    else begin
                        next_LED = ( LED << 1'd1 )  | 1'd1;
                    end
                end
                else begin
                    next_LED = ( LED >> 1'd1 );
                    next_index = current_index;
                    next_state = current_state;
                end
            end
        endcase    
    end
end


//-----------------------------------------------------------------------//
//                        Bound_Flasher Flip-Flop                        //
//-----------------------------------------------------------------------//
always@(posedge clk or negedge reset or posedge flick_trigger) begin
    if (!reset) begin
        if (current_state == IDLE || current_state == GO_DOWN || current_state == GO_UP) begin
            current_state <= IDLE;
            LED <= 16'd0;
            current_index <= 3'd0;
        end
        else begin
            current_state <= BEGIN;
            LED <= 16'd0;
            current_index <= 3'd0;
        end
    end
    else begin
        if (flick_trigger) begin
            if (current_state == IDLE) begin
                LED <= 16'd0;
                current_index <= 2'd0;
            end
            else begin
                current_index <= current_index - 1;
            end
            current_state <= GO_UP;
        end
        else if (clk) begin
            LED <= next_LED;
            current_state <= next_state;
            current_index <= next_index;
        end
    end
end

endmodule
