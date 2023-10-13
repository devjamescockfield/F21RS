
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
-- Filename:            env.adb
--
-- Description:         Provides the drivers required for simulating the
--                      environment in which the smoke detector operates.

pragma SPARK_Mode (Off);
with Text_IO, Sensor;
package body Env is

   Env_File: Text_IO.File_Type;

   package Integer_INOUT is new Text_IO.Integer_IO(Integer);

   procedure Update is

      Value: Integer;

   begin
      Integer_INOUT.Get(Env_File, Value);
      if (Value = 1) then 
	 Sensor.Write_Sensor(True); 
      else Sensor.Write_Sensor(False); 
      end if;
      Text_IO.Put('.');
   end Update;

   function At_End return Boolean is
   begin
      return Text_IO.End_Of_File(Env_File);
   end At_End;

   procedure Open_File is
   begin
      Text_IO.Open(Env_File, Text_IO.In_File, "env.dat");
   end Open_File;

   procedure Close_File is
   begin
      Text_IO.Close(Env_File);
      Text_IO.Put_Line(" [ complete ]");
   end Close_File;

end Env;



