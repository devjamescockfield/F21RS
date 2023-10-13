pragma SPARK_Mode (On);
package body Max
is
   procedure Int_Max(X, Y: in Integer; Z: out Integer)
   is
   begin
      if X > Y then
         Z:= X;
      else
         Z:= Y;
      end if;
   end Int_Max;
end Max;

