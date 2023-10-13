pragma SPARK_Mode (On);
package Int_Stack
  with 
  Abstract_State => State
  
is
  function Full return Boolean
    with
    Global => (Input => State),
    Depends => (Full'Result => State);
  
  procedure Push(X: in Integer)
    with
    Global => (In_Out => State),
    Depends => (State => (X, State));
		
end Int_Stack;

