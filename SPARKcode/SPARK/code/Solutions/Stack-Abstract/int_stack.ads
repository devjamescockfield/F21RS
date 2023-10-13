pragma SPARK_Mode (On);
package Int_Stack
  with 
  Abstract_State => State
  
is
  function Empty return Boolean
    with
    Global => (Input => State),
    Depends => (Empty'Result => State);

  function Full return Boolean
    with
    Global => (Input => State),
    Depends => (Full'Result => State);
  
  procedure Push(X: in Integer)
    with
    Global => (In_Out => State),
    Depends => (State => (X, State));
		
  procedure Pop(X: out Integer)
    with 
    Global => (In_Out => State),
    Depends => (X => State,
		State => State);
  
end Int_Stack;

