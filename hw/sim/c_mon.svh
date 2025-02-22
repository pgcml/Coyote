import lynxTypes::*;

// AXIS monitor
class c_mon;
  
  // Interface handle
  virtual AXI4S axis;

  // Mailbox handle
  mailbox mon2scb;

  // Number of transactions
  int n_trs;

  // 
  // C-tor
  //
  function new(virtual AXI4S axis, mailbox mon2scb);
    this.axis = axis;
    this.mon2scb = mon2scb;
  endfunction

  // Cycle start
  task cycle_start;
      #TT;
  endtask

  // Cycle wait
  task cycle_wait;
      @(posedge axis.aclk);
  endtask

  // Reset
  task reset_s;
      axis.tready <= 1'b0;
      $display("AXIS reset_s() completed.");
  endtask
  
  //
  // Run
  //
  task run;
    forever begin
        c_trs trs;
        trs = new();
        axis.tready <= #TA 1'b1;
        cycle_start();
        while(axis.tvalid != 1'b1) begin cycle_wait(); cycle_start(); end
        cycle_wait();
        axis.tready <= #TA 1'b0;
        trs.tdata = axis.tdata;
        trs.tlast = axis.tlast;
        mon2scb.put(trs);
        trs.display("Mon");
        n_trs++;
    end
  endtask
  
endclass