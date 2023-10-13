
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
-- Filename:            test_thermo.adb
--
-- Description:         Test harness for the thermostat controller. Note that test data and
--                      results are managed via the Env and Log packages respectively.

pragma SPARK_Mode (Off); 
with Env, Log, Thermo;
procedure Test_Thermo is
begin
   Env.Open_File;
   Log.Open_File;
   loop
      exit when Env.At_End;
      Env.Update;
      Log.Update;
      Thermo.Control;
      Log.Update;
   end loop;
   Env.Close_File;
   Log.Close_File;
end Test_Thermo;



