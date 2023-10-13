

pragma Spark_Mode (On);
package body B
is
   
   procedure Inc (X: in out A.Index_Type) is
   begin
      X:= X+1;
   end Inc;
   

end B;

