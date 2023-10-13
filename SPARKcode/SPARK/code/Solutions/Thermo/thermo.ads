
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
-- Filename:            thermo.ads
--
-- Description:         Implements the controller associated with the thermostat.

pragma SPARK_Mode (On);
with Sensor, Boiler;
package Thermo
is

   Min: constant Integer := 25;
   Max: constant Integer := 30;

   procedure Control 
     with 
     Global => (Input => Sensor.State,
		In_Out => Boiler.State),
     Depends => (Boiler.State => (Sensor.State, Boiler.State));
   
end Thermo;



