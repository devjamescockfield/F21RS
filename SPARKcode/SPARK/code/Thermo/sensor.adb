
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
-- Description:         Model the sensor associated with the thermostat.

pragma SPARK_Mode (On);
package body Sensor
  with
  Refined_State => (State => Sensor_State)

is
   Sensor_State: Sensor_Type;

   procedure Write_Sensor(Value: in Sensor_Type)
   is
   begin
      Sensor_State:= Value;
   end Write_Sensor;

   function Read_Sensor return Sensor_Type
   is
   begin
      return Sensor_State;
   end Read_Sensor;

begin -- initialization
   Sensor_State:=0;
end Sensor;



