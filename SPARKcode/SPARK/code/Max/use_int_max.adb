with Text_IO, Max;
procedure Use_Int_Max is

   package Integer_INOUT is new Text_IO.Integer_IO(Integer);

   X_Value, Y_Value, Z_Value: Integer;

begin
   loop
      Text_IO.New_Line;
      Text_IO.Put("X = ");
      Integer_INOUT.Get(X_Value);
      Text_IO.Put("Y = ");
      Integer_INOUT.Get(Y_Value);
      Max.Int_Max(X_Value, Y_Value, Z_Value);
      Text_IO.Put("Maximum of X and Y is ");
      Integer_INOUT.Put(Z_Value, 3); Text_IO.New_Line;
   end loop;

end Use_Int_Max;
