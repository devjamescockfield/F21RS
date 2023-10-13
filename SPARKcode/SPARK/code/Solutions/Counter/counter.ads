
pragma SPARK_Mode (On);
package Counter

is
  pragma Elaborate_Body;
  Count : Integer;
  
  procedure Reset(Value: in Integer)
     with
     Global => (Output => Count),
     Depends => (Count => Value);

   procedure Inc
     with
     Global => (In_Out => Count),
     Depends => (Count => Count);

   procedure Dec
     with
     Global => (In_Out => Count),
     Depends => (Count => Count);

   function Value return Integer
     with
     Global => (Input => Count),
     Depends => (Value'Result => Count);

end Counter;



