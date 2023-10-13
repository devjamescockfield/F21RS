
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
-- Filename:            thermo.adb
--
-- Description:         Implements the controller associated with the thermostat.



pragma SPARK_Mode (On); 
package body Thermo is

   procedure Control
   is
      Sensor_Value: Sensor.Sensor_Type;
   begin
      Sensor_Value:= Sensor.Read_Sensor;
      if Sensor_Value <= Min then
         Boiler.Switch_On;
      elsif Sensor_Value >= Max then
         Boiler.Switch_Off;
      end if;
   end Control;

end Thermo;



