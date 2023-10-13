
pragma SPARK_Mode (On);
package Counter

is
  pragma Elaborate_Body;
  Count : Integer;
  
  procedure Reset(Value: in Integer)
     with
     Global => (Output => Count);

   procedure Inc
     with
     Global => (In_Out => Count);

   function Value return Integer
     with
     Global => (Input => Count);

end Counter;



