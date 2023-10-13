
pragma SPARK_Mode (On);
package body Int_Stack
is

   function Empty return Boolean
   is
   begin
      return Pointer = 0;
   end Empty;

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

   procedure Pop(X: out Integer)
   is
   begin
      X:= Data(Pointer);
      Pointer:= Pointer - 1;
   end Pop;

begin
   Pointer:= 0;
   Data:= Vector'(Index_Range => 0);
end Int_Stack;



