pragma SPARK_Mode (Off);

with Text_IO, Counter;
use  Text_IO, Counter;

procedure Use_Counter is

   package Integer_INOUT is new Integer_IO(Integer);
   use Integer_INOUT;

   Op_Code: Integer;
   Data:    Integer;

begin
   loop
      Put("1 = Inc; 2 = Dec; 3 = Print; 4 = Reset: ");
      Get(Op_Code);
      case Op_Code is
         when 1 => Inc;
         when 2 => Dec;
         when 3 => Put("Count = "); Put(Value, 2);New_Line;
         when 4 => Put("Data: "); Get(Data);
                   Reset(Data);
         when others => Put_Line("Error");
      end case;
   end loop;

end Use_Counter;
