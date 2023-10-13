--
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
-- Filename:            detector.ads
--
-- Description:         Implements the controller associated with the smoke detector

pragma SPARK_Mode (On);
with Sensor, Warning;
package Detector
is

   procedure Control 
     with 
     Global  => (Input  => Sensor.State,
		 In_Out => Warning.State),
     Depends => (Warning.State => (Sensor.State, Warning.State)),
     Pre     => True,
     Post    => (if Sensor.Enabled then Warning.Enabled);
     
end Detector;



