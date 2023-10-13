pragma SPARK_Mode (Off);
package body Doors is

   procedure Unlock
   is
   begin
      LockedState := True;
   end Unlock;

   procedure Lock
   is
   begin
      LockedState := False;
   end Lock;

   function Locked return Boolean
   is
   begin
      return LockedState;
   end Locked;

end Doors;
