
pragma Spark_Mode (On);
package body Switch
is

   procedure Int_Switch(P: in out Pair)
   is

      T: Integer;

   begin
      T:= P(1);
      P(1):= P(2);
      P(2):= T;
   end Int_Switch;
end Switch;

