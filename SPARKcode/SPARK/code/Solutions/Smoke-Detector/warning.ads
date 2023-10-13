
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
-- Filename:            warning.ads
--
-- Description:         Models the warning alarm
--                      associated with a smoke detector. 

pragma SPARK_Mode (On);
package Warning
with Elaborate_Body

is
        State: Boolean;

   procedure Enable
     with 
     Global => (Output => State),
     Depends => (State => null),
     Pre => True,
     Post => (State);
   
   procedure Disable
     with 
     Global => (Output => State),
     Depends => (State => null),
     Pre => True,
     Post => (not(State));


   function Enabled return Boolean
     with 
     Global => (Input => State),
     Pre => True,
     Post => (Enabled'Result = State);
   
end Warning;



