pragma SPARK_Mode (Off);
with Sensors, Console, Doors;
package body ADLS is

   procedure Controller
   is
   begin
      -- check mode
      if Console.Auto_Mode_Enabled then
         Console.Disable_Auto_Mode;
      else
         Console.Enable_Auto_Mode;
      end if;

      -- check moving state
      if Sensors.Read_Sensor_Majority <= 4 then
         MovingState := False;
      elsif Sensors.Read_Sensor_Majority > 4 and Sensors.Read_Sensor_Majority <= 150 then
         MovingState := True;
      end if;

      -- check if not moving and auto mode selected
      if not MovingState and Console.Auto_Mode_Enabled then
         -- check if doors are locked
         if Doors.Locked then
            Doors.Unlock;
         end if;
      end if;
      -- check if moving and auto mode selected
      if MovingState and Console.Auto_Mode_Enabled then
         if not Doors.Locked then
            Doors.Lock;
         end if;
      end if;

      -- check if indicator is lit when doors are locked or not
      if Console.Indicator_Enabled then
            Console.Disable_Indicator;
         else
            Console.Enable_Indicator;
         end if;

   end Controller;

end ADLS;
