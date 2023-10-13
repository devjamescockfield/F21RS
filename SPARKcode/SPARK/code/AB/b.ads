

pragma Spark_Mode (On);
with A; 
use type A.Index_Type;
package B
is
   
   procedure Inc (X: in out A.Index_Type) 
     with
     Depends => (X => X);

end B;

