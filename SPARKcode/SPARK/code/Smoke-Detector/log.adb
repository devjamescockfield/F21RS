
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
--                      sensor and smoke detector at run-time.

pragma SPARK_Mode (Off);
with Text_IO, Sensor, Warning;
package body Log is
   
   Log_File: Text_IO.File_Type;

   procedure Update is
   begin
      if Sensor.Enabled then
         Text_IO.Put(Log_File, "ENABLED   ");
      else
         Text_IO.Put(Log_File, "  ---     ");
      end if;  
      if Warning.Enabled then
         Text_IO.Put(Log_File, "ENABLED   ");
      else
         Text_IO.Put(Log_File, "  ---     ");
      end if;
      Text_IO.New_Line(Log_File);
   end Update;

   procedure Open_File is
   begin
      Text_IO.Create(Log_File, Text_IO.Out_File, "log.dat");
      Text_IO.Put_Line(Log_File, "SENSOR    WARNING");
      Text_IO.Put_Line(Log_File, "------    -------");
   end Open_File;

   procedure Close_File is
   begin
      Text_IO.Close(Log_File);
   end Close_File;

end Log;



