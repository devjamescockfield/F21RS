
pragma SPARK_Mode (On);
package Int_Stack
  
is
   
   pragma Elaborate_Body; 

   Stack_Size: constant:=4;
   type Pointer_Range is range 0..Stack_Size;
   subtype Index_Range is Pointer_Range range 1..Stack_Size;
   type Vector is array(Index_Range) of Integer;
   Data: Vector;
   Pointer: Pointer_Range;

   function Empty return Boolean
     with
     Global => (Input => Pointer),
     Depends => (Empty'Result => Pointer);

   function Full return Boolean
     with
     Global => (Input => Pointer),
     Depends => (Full'Result => Pointer);

   procedure Push(X: in Integer)
     with 
     Global => (In_Out => (Data, Pointer)),
     Depends => (Data => (Data, Pointer, X),
		 Pointer => Pointer);
   
   procedure Pop(X: out Integer)
     with
     Global => (Input => Data,
		In_Out => Pointer),
     Depends => (X => (Data, Pointer),
		 Pointer => Pointer);

end Int_Stack;

