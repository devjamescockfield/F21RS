pragma Spark_Mode (On);
package Dec
  
is
   procedure Int_Dec(X: in out Integer)
   with
     Depends => (X => X),
     Pre     => (X > 0);
   
 end Dec;

