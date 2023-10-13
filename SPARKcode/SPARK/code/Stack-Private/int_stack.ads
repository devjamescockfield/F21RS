pragma SPARK_Mode (On);
package Int_Stack is

   type Stack is private;

   function Empty(S: Stack) return Boolean
     with 
     Depends => (Empty'Result => S);
   
   function Full(S: Stack) return Boolean
     with 
     Depends => (Full'Result => S);

   procedure Init(S: out Stack)
     with 
     Depends => (S => null);

   procedure Push(X: in Integer; S: in out Stack)
     with
     Depends => (S => (X, S));
   
   procedure Pop(X: out Integer; S: in out Stack)
     with 
     Depends => (X => S,
		 S => S);

private
   Stack_Size: constant := 4;
   type Pointer_Range is range 0..Stack_Size;
   subtype Index_Range is Pointer_Range range 1..Stack_Size;
   type Vector is array(Index_Range) of Integer;
   type Stack is
      record
         Data: Vector;
         Pointer: Pointer_Range;
      end record;
end Int_Stack;



