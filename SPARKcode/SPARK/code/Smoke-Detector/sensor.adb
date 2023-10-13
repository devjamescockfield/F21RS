
-- Author:              A. Ireland
--
-- Address:             School Mathematical & Computer Sciences
--                      Heriot-Watt University
--                      Edinburgh, EH14 4AS
--
-- E-mail:              a.ireland@hw.ac.uk
--
-- Last modified:       13/8/2019
--
-- Filename:            sensor.adb
--
-- Description:         Model the sensor associated with a smoke detector. 

pragma SPARK_Mode (On);
package body Sensor
  
is

   procedure Write_Sensor(Value: in Boolean)
   is
   begin
      State:= Value;
   end Write_Sensor;

   function Enabled return Boolean
   is
   begin
      return State;
   end Enabled;

begin -- initialization
   State:= False;
end Sensor;



