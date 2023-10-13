
pragma Spark_Mode (Off);
with Text_IO, Switch;
procedure Use_Int_Switch is

   package Integer_INOUT is new Text_IO.Integer_IO(Integer);

   X_Value, Y_Value: Integer;

begin
   loop
      Text_IO.New_Line;
      Text_IO.Put("X = ");
      Integer_INOUT.Get(X_Value);
      Text_IO.Put("Y = ");
      Integer_INOUT.Get(Y_Value);
      Switch.Int_Switch(X_Value, Y_Value);
      Text_IO.Put("After switch X = ");
      Integer_INOUT.Put(X_Value, 3); Text_IO.New_Line;
      Text_IO.Put("After switch Y = ");
      Integer_INOUT.Put(Y_Value, 3); Text_IO.New_Line;
   end loop;

end Use_Int_Switch;
