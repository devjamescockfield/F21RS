
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
-- Description:         Models a sensor associated with a smoke detector.

pragma SPARK_Mode (On);
package Sensor
  with 
   Elaborate_Body

is
   State: Boolean; 

   procedure Write_Sensor(Value: in Boolean)
     with 
     Global => (Output => State),
     Depends => (State => Value);
   
   function Enabled return Boolean
     with 
     Global => (Input => State),
     Pre => True,
     Post => (Enabled'Result = State);
   
end Sensor;



