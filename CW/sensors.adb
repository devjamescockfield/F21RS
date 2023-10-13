pragma SPARK_Mode (Off);
package body Sensors is
   
   procedure Write_Sensors (Value_1, Value_2, Value_3: in Sensor_Type)
   is
   begin
      SensorState(1) := Value_1;
      SensorState(2) := Value_2;
      SensorState(3) := Value_3;
   end Write_Sensors;
   
   function Read_Sensor (Sensor_Index: in Sensor_Index_Type) return Sensor_Type
   is
   begin
      return SensorState(Sensor_Index);
   end Read_Sensor;
   
   function Read_Sensor_Majority return Sensor_Type
   is
      MajorityValue : Integer;
      MajorityCount : Integer;
   begin
      MajorityValue := SensorState(1);
      MajorityCount := 1;
      for I in 2..3 loop
         if SensorState(I) = MajorityValue then
            MajorityCount := MajorityCount + 1;
         else
            MajorityCount := MajorityCount -1;
            if MajorityValue = 0 then
               MajorityValue := SensorState(I);
               MajorityCount := 1;
            end if;
         end if;
      end loop;
      
      return MajorityValue;
   end Read_Sensor_Majority;
   
end Sensors;
