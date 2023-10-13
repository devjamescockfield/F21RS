
pragma Spark_Mode (On);
package body Switch
is

   procedure Int_Switch(X, Y: in out Integer)
   is

      T: Integer;

   begin
      T:=X;
      X:=Y;
      Y:=T;
   end Int_Switch;
end Switch;

