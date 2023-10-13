pragma SPARK_Mode (On);
package body Int_Stack is
   
   MyStack : Stack;

   function Empty(S: Stack) return Boolean is
   begin
      return S.Pointer = 0;
   end Empty;

   function Full(S: Stack) return Boolean is
   begin
      return S.Pointer = Stack_Size;
   end Full;

   procedure Init(S: out Stack) is
   begin
      S.Pointer:=0;
      S.Data:=Vector'(Index_Range => 0); 
   end Init;

   procedure Push(X: in Integer; S: in out Stack) is
   begin
      S.Pointer:=S.Pointer+1;
      S.Data(S.Pointer):=X;
   end Push;

   procedure Pop(X: out Integer; S: in out Stack) is
   begin
      X:=S.Data(S.Pointer);
      S.Pointer:=S.Pointer-1;
   end Pop;
   
begin
   Init(MyStack);
end Int_Stack;



