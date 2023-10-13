pragma SPARK_Mode(Off);
package body Console is

   procedure Enable_Indicator
   is
   begin
      IndicatorState := True;
   end Enable_Indicator;

   procedure Disable_Indicator
   is
   begin
      IndicatorState := False;
   end Disable_Indicator;

   function Indicator_Enabled return Boolean
   is
   begin
      return IndicatorState;
   end Indicator_Enabled;

   procedure Enable_Auto_Mode
   is
   begin
      AutoState := True;
   end Enable_Auto_Mode;

   procedure Disable_Auto_Mode
   is
   begin
      AutoState := False;
   end Disable_Auto_Mode;

   function Auto_Mode_Enabled return Boolean
   is
   begin
      return AutoState;
   end Auto_Mode_Enabled;

end Console;
