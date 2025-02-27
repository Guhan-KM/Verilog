module tb_comparator;
  reg [3:0] a, b;    
    wire x, y, z; 

comparator uut (
        .a(a),
        .b(b),
        .x(x),
        .y(y),
        .z(z)
    );

    initial begin
        
        $monitor("a = %b, b = %b, x = %b, y = %b, z = %b", a, b, x, y, z);
        
        // Test case 1:
        a = 4'b1111; b = 4'b1111; #10;
              
  if (a<b)begin
    $display("a<b");
    end else if (a==b)
          $display("a=b");
          else begin
            $display("a>b");
      end
        
      
      // Test case 2:
        a = 4'b1010; b = 4'b0001; #10;
              
  if (a<b)begin
    $display("a<b");
    end else if (a==b)
          $display("a=b");
          else begin
            $display("a>b");
      end
      
        
      // Test case 3:
        a = 4'b0001; b = 4'b1100; #10;
           
  if (a<b)begin
    $display("a<b");
    end else if (a==b)
          $display("a=b");
          else begin
            $display("a>b");
      end

      $finish();
    end
endmodule
