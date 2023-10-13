
-- Author:              A. Ireland
--
-- Address:             School Mathematical & Computer Sciences
--                      Heriot-Watt University
--                      Edinburgh, EH14 4AS
--
-- E-mail:              a.ireland@hw.ac.uk
--
-- Last modified:       13/8/19
--
-- Filename:            sensor.ads
--
-- Description:         Models a sensor associated with the thermostat.

pragma SPARK_Mode (On);
package Sensor
  with 
  Abstract_State => State,
  Initializes => State

is
   subtype Sensor_Type is Integer range -40..40;

   procedure Write_Sensor(Value: in Sensor_Type)
     with 
     Global => (Output => State),
     Depends => (State => Value);
   
   function Read_Sensor return Sensor_Type
     with 
     Global => (Input => State);
   
end Sensor;



