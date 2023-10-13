
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
-- Filename:            warning.adb
--
-- Description:         Models a warning alarm associated
--                      with a smoke detector.

pragma SPARK_Mode (On);
package body Warning

is

   procedure Enable is
   begin
      State:=True;
   end Enable;

   procedure Disable is
   begin
      State:=False;
   end Disable;

   function Enabled return Boolean is
   begin
      return State;
   end Enabled;

begin -- initialization
   State:= False;
end Warning;



