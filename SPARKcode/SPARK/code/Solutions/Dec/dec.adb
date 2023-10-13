pragma Spark_Mode (On);
package body Dec
is
   procedure Int_Dec(X: in out Integer)
   is
   begin
      if X < 0 then X:= X-1; end if;
      pragma Assert (X >= 0);
   end Int_dec;

end Dec;

