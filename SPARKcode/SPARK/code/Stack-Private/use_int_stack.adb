pragma SPARK_Mode (Off); 
with Text_IO, Int_Stack;

procedure Use_Int_Stack is

package Integer_INOUT is new Text_IO.Integer_IO(Integer);
package Boolean_INOUT is new Text_IO.Enumeration_IO(Boolean);

   My_Stack: Int_Stack.Stack;
   Op_Code: Integer;
   Data: Integer;

begin
   Int_Stack.Init(My_Stack);
   loop
      Text_IO.Put("0 = Init; 1 = Push; 2 = Pop; 3 = Empty; 4 = Full: ");
      Integer_INOUT.Get(Op_Code);
      case Op_Code is
         when 0 => Int_Stack.Init(My_Stack);
         when 1 => Text_IO.Put("Data: ");
                   Integer_INOUT.Get(Data);
                   Int_Stack.Push(Data, My_Stack);
         when 2 => Int_Stack.Pop(Data, My_Stack);
                   Integer_INOUT.Put(Data);
                   Text_IO.New_Line;
         when 3 => Boolean_INOUT.Put(Int_Stack.Empty(My_Stack));
                   Text_IO.New_Line;
         when 4 => Boolean_INOUT.Put(Int_Stack.Full(My_Stack));
                   Text_IO.New_Line;
         when others => Text_IO.Put_Line("Error");
      end case;
   end loop;
end Use_Int_Stack;
