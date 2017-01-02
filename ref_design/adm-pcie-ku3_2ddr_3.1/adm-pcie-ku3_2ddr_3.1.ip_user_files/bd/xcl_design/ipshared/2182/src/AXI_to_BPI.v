
`timescale 1 ns / 1 ps

	module AXI_to_BPI #
	(

      // Do not modify the parameters beyond this line
		// Width of S_AXI data bus
	    parameter integer C_S_AXI_DATA_WIDTH    = 32,
        // Width of S_AXI address bus
        parameter integer C_S_AXI_ADDR_WIDTH    = 8
    ) (
        // Flash Interface Pins
        input  wire flash_rst,
        input  wire flash_clk,
        output wire [26:1] flash_A,
        inout  wire [15:4] flash_DQ,
        output wire flash_OE_N,       
        output wire flash_WE_N,
//        output wire flash_CS_N,
        output wire flash_ADV_N,

        // Do not modify the ports beyond this line
        // Global Clock Signal
        input wire  S_AXI_ACLK,
        // Global Reset Signal. This Signal is Active LOW
        input wire  S_AXI_ARESETN,
        // Write address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        // Write channel Protection type. This signal indicates the
            // privilege and security level of the transaction, and whether
            // the transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_AWPROT,
        // Write address valid. This signal indicates that the master signaling
            // valid write address and control information.
        input wire  S_AXI_AWVALID,
        // Write address ready. This signal indicates that the slave is ready
            // to accept an address and associated control signals.
        output wire  S_AXI_AWREADY,
        // Write data (issued by master, acceped by Slave) 
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
        // Write strobes. This signal indicates which byte lanes hold
            // valid data. There is one write strobe bit for each eight
            // bits of the write data bus.    
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
        // Write valid. This signal indicates that valid write
            // data and strobes are available.
        input wire  S_AXI_WVALID,
        // Write ready. This signal indicates that the slave
            // can accept the write data.
        output wire  S_AXI_WREADY,
        // Write response. This signal indicates the status
            // of the write transaction.
        output wire [1 : 0] S_AXI_BRESP,
        // Write response valid. This signal indicates that the channel
            // is signaling a valid write response.
        output wire  S_AXI_BVALID,
        // Response ready. This signal indicates that the master
            // can accept a write response.
        input wire  S_AXI_BREADY,
        // Read address (issued by master, acceped by Slave)
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
        // Protection type. This signal indicates the privilege
            // and security level of the transaction, and whether the
            // transaction is a data access or an instruction access.
        input wire [2 : 0] S_AXI_ARPROT,
        // Read address valid. This signal indicates that the channel
            // is signaling valid read address and control information.
        input wire  S_AXI_ARVALID,
        // Read address ready. This signal indicates that the slave is
            // ready to accept an address and associated control signals.
        output wire  S_AXI_ARREADY,
        // Read data (issued by slave)
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
        // Read response. This signal indicates the status of the
            // read transfer.
        output wire [1 : 0] S_AXI_RRESP,
        // Read valid. This signal indicates that the channel is
            // signaling the required read data.
        output wire  S_AXI_RVALID,
        // Read ready. This signal indicates that the master can
            // accept the read data and response information.
        input wire  S_AXI_RREADY
    );

    // AXI4LITE signals
    reg      axi_awready;
    reg      axi_wready;
    reg [1 : 0]     axi_bresp;
    reg      axi_bvalid;
    reg      axi_arready;
    reg [C_S_AXI_DATA_WIDTH-1 : 0]     axi_rdata;
    reg [1 : 0]     axi_rresp;
    reg      axi_rvalid;

    wire     slv_reg_rden;
    wire     slv_reg_wren;
    
    (* ASYNC_REG = "TRUE" *)
    reg [C_S_AXI_DATA_WIDTH-1 : 0] reg_data_out_async1;
    (* ASYNC_REG = "TRUE" *)
    reg [C_S_AXI_DATA_WIDTH-1 : 0] reg_data_out;
    wire [7:0] prom_sr;
    wire prog_rdy;
    wire fifo_full;
    wire fifo_empty;
    wire fifo_rd_en;
    wire [31:0] fifo_data_out;
    wire [31:0] flash_data_in;
    wire [15:0] flash_DQ_I;
    wire [15:0] flash_DQ_O;
    wire flash_tri_ctrl;

    // I/O Connections assignments
    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY    = axi_wready;
    assign S_AXI_BRESP    = axi_bresp;
    assign S_AXI_BVALID    = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RDATA    = axi_rdata;
    assign S_AXI_RRESP    = axi_rresp;
    assign S_AXI_RVALID    = axi_rvalid;

    // Implement axi_awready generation
    // axi_awready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
    // de-asserted when reset is low.
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_awready <= 1'b0;
        end 
      else
        begin    
          if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID && ~reg_data_out[17] && ~axi_bvalid)
            begin
              // slave is ready to accept write address when 
              // there is a valid write address and write data
              // on the write address and data bus. This design 
              // expects no outstanding transactions. 
              axi_awready <= 1'b1;
            end
          else           
            begin
              axi_awready <= 1'b0;
            end
        end 
    end       

    // The AXI_AWADDR is never registered because all data is written to the FIFO
    // The AXI_AWADDR is not used for this implementaiton.     

    // Implement axi_wready generation
    // axi_wready is asserted for one S_AXI_ACLK clock cycle when both
    // S_AXI_AWVALID and S_AXI_WVALID are asserted. 
    // axi_wready will not assert if the FIFO is full (~reg_data_out[17])
    // axi_wready will not assert if the last response has not completed.
    // axi_wready is de-asserted when reset is low. 
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_wready <= 1'b0;
        end 
      else
        begin    
          if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID && ~reg_data_out[17] && ~axi_bvalid)
            begin
              // slave is ready to accept write data when 
              // there is a valid write address and write data
              // on the write address and data bus. 
              // axi_wready will not assert if the FIFO is full (~reg_data_out[17])
              //This design expects no outstanding transactions. 
              axi_wready <= 1'b1;
            end
          else
            begin
              axi_wready <= 1'b0;
            end
        end 
    end       

    // Implement the slave write enable. This is used to write data to the FIFO
    // FIFO data is accepted and written to the fifo when
    // axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. 
    // no byte enables are used, when slv_reg_wren is asserted the entire 32-bit
    // AXI Data Bus is written to the fifo.
    // The write address is always ignored and all write data is writtent to the FIFO
    // slv_reg_wren is asserted when valid address and data are available
    // and the slave is ready to accept the write address and write data
    // and the fifo is not full.
    assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;

    // Implement write response logic generation
    // The write response and response valid signals are asserted by the slave 
    // when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
    // This marks the acceptance of address and indicates the status of 
    // write transaction.
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_bvalid  <= 0;
          axi_bresp   <= 2'b0;
        end 
      else
        begin    
          if (axi_awready && S_AXI_AWVALID && ~axi_bvalid && axi_wready && S_AXI_WVALID)
            begin
              // indicates a valid write response is available
              axi_bvalid <= 1'b1;
              axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   // work error responses in future
          else
            begin
              if (S_AXI_BREADY && axi_bvalid) 
                //check if bready is asserted while bvalid is high) 
                //(there is a possibility that bready is always asserted high)   
                begin
                  axi_bvalid <= 1'b0; 
                end  
            end
        end
    end   

    // Implement axi_arready generation
    // axi_arready is asserted for one S_AXI_ACLK clock cycle when
    // S_AXI_ARVALID is asserted. axi_awready is 
    // de-asserted when reset (active low) is asserted. 
    // axi_araddr is reset to zero on reset assertion.
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_arready <= 1'b0;
        end 
      else
        begin    
          if (~axi_arready && S_AXI_ARVALID)
            begin
              // indicates that the slave has acceped the valid read address
              axi_arready <= 1'b1;
            end
          else
            begin
              axi_arready <= 1'b0;
            end
        end 
    end       

    // Implement axi_arvalid generation
    // axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
    // S_AXI_ARVALID and axi_arready are asserted. The slave registers 
    // data are available on the axi_rdata bus at this instance. The 
    // assertion of axi_rvalid marks the validity of read data on the 
    // bus and axi_rresp indicates the status of read transaction.axi_rvalid 
    // is deasserted on reset (active low). axi_rresp and axi_rdata are 
    // cleared to zero on reset (active low).  
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rvalid <= 0;
          axi_rresp  <= 0;
        end 
      else
        begin    
          if (axi_arready && S_AXI_ARVALID && ~axi_rvalid)
            begin
              // Valid read data is available at the read data bus
              axi_rvalid <= 1'b1;
              axi_rresp  <= 2'b0; // 'OKAY' response
            end   
          else if (axi_rvalid && S_AXI_RREADY)
            begin
              // Read data is accepted by the master
              axi_rvalid <= 1'b0;
            end                
        end
    end    

    // Implement Slave Read interface.
    // Slave reads can only access the status register.
    // The address for the Slave read is always ignored
    // Slave register read enable is asserted when valid address is available
    // and the slave is ready to accept the read address.
    assign slv_reg_rden = axi_arready & S_AXI_ARVALID & ~axi_rvalid;

    // Output register for the status register
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          axi_rdata  <= 0;
        end 
      else
        begin    
          // When there is a valid read address (S_AXI_ARVALID) with 
          // acceptance of read address by the slave (axi_arready), 
          // output the read dada 
          if (slv_reg_rden)
            begin
              axi_rdata <= reg_data_out;     // register read data
            end   
        end
    end    

    // Add CDC registers for the Status register output
    // AXI reads can only read the status register regardless of the address
    always @( posedge S_AXI_ACLK )
    begin
       // Potentially add byte-swapping here if needed.
       reg_data_out_async1 = {16'h0000, prog_rdy, fifo_full, 6'h000000, prom_sr};
       reg_data_out <= reg_data_out_async1;
    end

    // Add a FIFO for all Write Data.
    // All data is written to the fifo regardless of the write address.
    bitstream_fifo bitstream_fifo_i(
        .din(S_AXI_WDATA), 
        .wr_clk(S_AXI_ACLK), 
        .wr_en(slv_reg_wren), 
        .full(), 
        .prog_full(fifo_full), 
        .dout(fifo_data_out), 
        .rd_clk(flash_clk), 
        .rd_en(fifo_rd_en), 
        .empty(fifo_empty), 
        .rst(flash_rst)
    );    
    
   // STARTUPE3: STARTUP Block
   //            Kintex UltraScale
   // Xilinx HDL Language Template, version 2014.4

   STARTUPE3 #(
      .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
      .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation
   )
   STARTUPE3_inst (
      .CFGCLK(CFGCLK),       // 1-bit output: Configuration main clock output
      .CFGMCLK(CFGMCLK),     // 1-bit output: Configuration internal oscillator clock output
      .DI(flash_DQ_I[3:0]),               // 4-bit output: Allow receiving on the D input pin
      .EOS(EOS),             // 1-bit output: Active-High output signal indicating the End Of Startup
      .PREQ(PREQ),           // 1-bit output: PROGRAM request to fabric output
      .DO(flash_DQ_O[3:0]),               // 4-bit input: Allows control of the D pin output
      .DTS({4{flash_tri_ctrl}}),             // 4-bit input: Allows tristate of the D pin
      .FCSBO(flash_CS_N),         // 1-bit input: Contols the FCS_B pin for flash access
      .FCSBTS(flash_tri_ctrl),       // 1-bit input: Tristate the FCS_B pin
      .GSR(1'b0),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port)
      .GTS(1'b0),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
      .KEYCLEARB(1'b1), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
      .PACK(1'b0),           // 1-bit input: PROGRAM acknowledge input
      .USRCCLKO(USRCCLKO),   // 1-bit input: User CCLK input
      .USRCCLKTS(1'b0), // 1-bit input: User CCLK 3-state enable input
      .USRDONEO(USRDONEO),   // 1-bit input: User DONE pin output control
      .USRDONETS(1'b0)  // 1-bit input: User DONE 3-state enable output
   );

   // End of STARTUPE3_inst instantiation

    /// Add Bi-directions buffers for the flash Data pins
    generate
        genvar  j;
        for (j = 4; j <= 15; j = j + 1)
        begin : bidir_IO
            IOBUF IOBUF_i (
                .IO(flash_DQ[j]),
                .I(flash_DQ_O[j]),
                .O(flash_DQ_I[j]),
                .T(flash_tri_ctrl)                
            );
        end
    endgenerate

    // Assignments for the flash programmer and flash interfaces
    // Assign the fifo output data to the flash input data
    // Potentially add byte-swapping here if needed.  
    assign flash_data_in = fifo_data_out;

    // Tie flash_ADV_N to ground to let address flow through 
    assign flash_ADV_N = 1'b0;
    // Assign high-order flash pins to ground
    // The programmer will always address the top 1/4 (256K) of the flash
    assign flash_A[26:25] = 2'b01;

    // Add the flash programmer module that pulls data from the fifo
    // and programs the fash accordingly
    (* DONT_TOUCH = "TRUE" *)
    programmer programmer_i (
        .CLK          (flash_clk),
        .RST          (flash_rst),
        .A            (flash_A[24:1]),   
        .DQ_I         (flash_DQ_I),
        .DQ_O         (flash_DQ_O),
        .OE_N         (flash_OE_N),
        .WE_N         (flash_WE_N),
        .CS_N         (flash_CS_N),
        .TRI_CTRL     (flash_tri_ctrl),
        .DATA         (flash_data_in),
        .FIFO_RD_EN   (fifo_rd_en), 
        .FIFO_EMPTY   (fifo_empty),
        .PROM_SR      (prom_sr),
        .PROG_RDY     (prog_rdy),
        .ERROR        (ERROR_pin)
    );

    // User logic ends

    endmodule
