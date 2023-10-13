
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
-- Filename:            boiler.ads
--
-- Description:         Models the water boiler subsystem associated
--                      with the thermostat controller.

pragma SPARK_Mode (On);
package Boiler
  with 
     Abstract_State => State,
     Initializes => State

is
   procedure Switch_On
     with 
     Global => (Output => State),
     Depends => (State => null);
   
   procedure Switch_Off
     with 
     Global => (Output => State),
     Depends => (State => null);

   function Switched_On return Boolean
     with 
     Global => (Input => State);
   
end Boiler;



