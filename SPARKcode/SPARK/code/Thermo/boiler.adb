
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
-- Filename:            brakes.adb
--
-- Description:         Models the water boiler subsystem associated
--                      with the thermostat controller.

pragma SPARK_Mode (On);
package body Boiler
  with 
    Refined_State => (State => Boiler_State)
is

   Boiler_State: Boolean;

   procedure Switch_On is
   begin
      Boiler_State:=True;
   end Switch_On;

   procedure Switch_Off is
   begin
      Boiler_State:=False;
   end Switch_Off;

   function Switched_On return Boolean is
   begin
      return Boiler_State;
   end Switched_On;

begin -- initialization
   Boiler_State:= False;
end Boiler;



