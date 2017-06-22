module blinky (
    output reg[3:0] LED
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
        if (count < {8'h 78, {N-7{1'h 0}}}) begin
            count <= count + {N{1'h 1}};
        end else begin
            count <= {N{1'h 0}};
        end
    end

    //4-8 data encoder ROM
    always @ (count[N-1:N-2]) begin
        case (count[N-1:N-2])
            2'b 01:
                LED[3:0] <= ~4'b 1000;
            2'b 10:
                LED[3:0] <= ~4'b 0100;
            2'b 11:
                LED[3:0] <= ~4'b 0010;
            default :
                LED[3:0] <= ~4'b 0001;
        endcase
    end
endmodule
