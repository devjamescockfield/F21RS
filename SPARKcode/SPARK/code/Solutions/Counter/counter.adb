
pragma SPARK_Mode (On);
package body Counter is

   procedure Reset(Value: in Integer) is
   begin
      Count:=Value;
   end Reset;

   procedure Inc is
   begin
      Count:=Count+1;
   end Inc;

   procedure Dec is
   begin
      Count:=Count-1;
   end Dec;

   function Value return Integer is
   begin
      return Count;
   end Value;

begin -- initialization
      Count:=0;
end Counter;



