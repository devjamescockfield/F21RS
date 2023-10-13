with Text_IO, Min;
procedure Use_Int_Min is

   package Integer_INOUT is new Text_IO.Integer_IO(Integer);

   X_Value, Y_Value: Integer;

begin
   loop
      Text_IO.New_Line;
      Text_IO.Put("X = ");
      Integer_INOUT.Get(X_Value);
      Text_IO.Put("Y = ");
      Integer_INOUT.Get(Y_Value);
      Text_IO.Put("Minimum of X and Y is ");
      Integer_INOUT.Put(Min.Int_Min(X_Value, Y_Value), 3);
      Text_IO.New_Line;
   end loop;

end Use_Int_Min;
