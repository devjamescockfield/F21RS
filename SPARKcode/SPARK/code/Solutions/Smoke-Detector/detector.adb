
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
-- Filename:            detector.adb
--
-- Description:         Implements the controller associated with the smoke detector.

pragma SPARK_Mode (On); 
package body Detector is

   procedure Control
   is

   begin
      if Sensor.Enabled then
         Warning.Enable;
      elsif Warning.Enabled then
         Warning.Disable;
      end if;
   end Control;

end Detector;



