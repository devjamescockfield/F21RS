pragma SPARK_Mode (On);
package body Int_Stack
  with
  Refined_State => (State => (Data, Pointer))
  
is
   Stack_Size: constant:=4;
   
   type Pointer_Range is range 0..Stack_Size;
   subtype Index_Range is Pointer_Range range 1..Stack_Size;
   type Vector is array(Index_Range) of Integer;
   
   Data: Vector;
   Pointer: Pointer_Range;

   function Full return Boolean
     with
     Refined_Global => (Input => Pointer),
     Refined_Depends => (Full'Result => Pointer)
   is
   begin
      return Pointer = Stack_Size;
   end Full;

   procedure Push(X: in Integer)
     with
     Refined_Global => (In_Out => (Data, Pointer)),
     Refined_Depends => (Data => (X, Data, Pointer),
                         Pointer => Pointer)
   is
   begin
      Pointer:= Pointer + 1;
      Data(Pointer):= X;
   end Push;

begin
   Pointer:= 0;
   Data:= Vector'(Index_Range => 0);
end Int_Stack;



