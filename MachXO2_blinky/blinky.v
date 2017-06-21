module blinky (
    output reg[7:0] LED
    );
    // internal constants
    // N: sets counter size
    parameter N = 28;

    // internal variables
    reg[N-1:0] count;
    wire       osc_clk;

    // Internal Oscillator
    // STDBY: 0=Enabled, 1=Disabled also Disabled with Bandgap=OFF
    // SEDSTDBY: this signal is not required if not using SED
    defparam OSCH_inst.NOM_FREQ = "133.00";
    OSCH OSCH_inst (
        .STDBY(1'b0),  
        .OSC(osc_clk),
        .SEDSTDBY()
        );

    // counter with no flag control
    always @ (posedge osc_clk) begin
        if (count < {8'h 79, {N-7{1'h 0}}}) begin
            count <= count + 1;
        end else begin
            count <= {N{1'h 0}};
        end
    end

    //4-8 data encoder ROM
    always @ (count[N-1:N-4]) begin
        case (count[N-1:N-4])
            4'b 0001:
                LED[7:0] <= ~8'b 0001_1000;
            4'b 0010:
                LED[7:0] <= ~8'b 0101_1010;
            4'b 0011:    
                LED[7:0] <= ~8'b 0111_1110;
            4'b 0100:
                LED[7:0] <= ~8'b 1111_1111;
            4'b 0101:    
                LED[7:0] <= ~8'b 1110_0111;
            4'b 0110:
                LED[7:0] <= ~8'b 0110_0110;
            4'b 0111:
                LED[7:0] <= ~8'b 0101_1010;
            4'b 1000:    
                LED[7:0] <= ~8'b 0011_1100;
            4'b 1001:
                LED[7:0] <= ~8'b 0001_1000;
            4'b 1010:    
                LED[7:0] <= ~8'b 0010_0100;
            4'b 1011:
                LED[7:0] <= ~8'b 0100_0010;
            4'b 1100:    
                LED[7:0] <= ~8'b 1000_0001;
            4'b 1101:
                LED[7:0] <= ~8'b 0100_0010;
            4'b 1110:
                LED[7:0] <= ~8'b 0010_0100;
            4'b 1111:
                LED[7:0] <= ~8'b 0001_1000;
            default :
                LED[7:0] <= ~8'b 0000_0000;
        endcase
    end
endmodule
