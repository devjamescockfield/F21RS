
pragma SPARK_Mode (On);
package body Int_Stack
is

   function Full return Boolean
   is
   begin
      return Pointer = Stack_Size;
   end Full;

   procedure Push(X: in Integer)
   is
   begin
      Pointer:= Pointer + 1;
      Data(Pointer):= X;
   end Push;

begin
   Pointer:= 0;
   Data:= Vector'(Index_Range => 0);
end Int_Stack;



