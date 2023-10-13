pragma SPARK_Mode(On);
package body Min
is
   function Int_Min(X, Y: in Integer) return Integer

   is
   begin
      if X > Y then
	 return(Y);
      else
	 return(X);
      end if;
   end Int_Min;
end Min;

