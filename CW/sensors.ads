--
-- Author:              A. Ireland
-- Updated:             23.8.2023
-- Description:         Models the wheel speed sensors. Note that a single sensor reading is calculated using a majority vote algorithm.

pragma SPARK_Mode (On); 
package Sensors
 
is
   
   pragma Elaborate_Body;
   
   Init_Value:  constant Integer := 0;
   Undef_Value: constant Integer := 151; -- valid wheel speed readings are in the range 0..150. A value of 151 denotes an undefined reading.
   
   subtype Sensor_Type is Integer range 0..151;
   subtype Sensor_Index_Type is Integer range 1..3;
   type Sensors_Type is array (Sensor_Index_Type) of Sensor_Type;
   
   SensorState: Sensors_Type;

   procedure Write_Sensors(Value_1, Value_2, Value_3: in Sensor_Type)
   with 
     Global => (In_Out => SensorState),
     Depends => (SensorState => (SensorState, Value_1, Value_2, Value_3));
   
   function Read_Sensor(Sensor_Index: in Sensor_Index_Type) return Sensor_Type
   with
     Global  => (Input => SensorState),
     Depends => (Read_Sensor'Result => (SensorState, Sensor_Index));

   function Read_Sensor_Majority return Sensor_Type
   with
     Global  => (Input => SensorState),
     Depends => (Read_Sensor_Majority'Result => SensorState);
   
end Sensors;
