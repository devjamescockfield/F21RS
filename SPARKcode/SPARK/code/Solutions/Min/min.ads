pragma SPARK_Mode (On);
package Min
is
   function Int_Min(X, Y: in Integer) return Integer
     with 
     Depends => (Int_Min'Result => (X, Y));

end Min;

