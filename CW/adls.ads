pragma SPARK_Mode (On);
package ADLS 

is
   pragma Elaborate_Body;
   
   Auto_Mode_Cnt : Integer;
   MovingState : Boolean;
   
   procedure Controller;
   
end ADLS;
