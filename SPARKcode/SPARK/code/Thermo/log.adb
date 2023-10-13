
-- Author:              A. Ireland
--
-- Address:             School Mathematical & Computer Sciences
--                      Heriot-Watt University
--                      Edinburgh, EH14 4AS
--
-- E-mail:              a.ireland@hw.ac.uk
--
-- Last modified:       18/10/2002
--
-- Filename:            log.adb
--
-- Description:         Provides logger that records state information on the
--                      sensor and boiler subsystems at run-time.

with Text_IO, Sensor, Boiler;

package body Log is

   package Integer_INOUT is new Text_IO.Integer_IO(Integer);

   Log_File: Text_IO.File_Type;

   procedure Update is
   begin
      Integer_INOUT.Put(Log_File, Sensor.Read_Sensor, 2);
      if Boiler.Switched_On then
         Text_IO.Put(Log_File, "          ON ");
      else
         Text_IO.Put(Log_File, "      OFF ");
      end if;
      Text_IO.New_Line(Log_File);
   end Update;

   procedure Open_File is
   begin
      Text_IO.Create(Log_File, Text_IO.Out_File, "log.dat");
      Text_IO.Put_Line(Log_File, "SENSOR  BOILER");
      Text_IO.Put_Line(Log_File, "------  ------");
   end Open_File;

   procedure Close_File is
   begin
      Text_IO.Close(Log_File);
   end Close_File;

end Log;



