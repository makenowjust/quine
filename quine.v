module quine;
  reg [8*142:1] s;
  initial begin
    s = "module quine;%c  reg [8*142:1] s;%c  initial begin%c    s = %c%s%c;%c    $display(%c%s%c,10,10,10,34,s,34,10,34,s,34,10,10);%c  end%cendmodule";
    $display("module quine;%c  reg [8*142:1] s;%c  initial begin%c    s = %c%s%c;%c    $display(%c%s%c,10,10,10,34,s,34,10,34,s,34,10,10);%c  end%cendmodule",10,10,10,34,s,34,10,34,s,34,10,10);
  end
endmodule
