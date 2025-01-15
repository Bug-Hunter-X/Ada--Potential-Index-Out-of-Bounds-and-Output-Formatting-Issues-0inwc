```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
   Index : Positive_Index := 1;
begin
   loop
      My_Arr(Index) := My_Arr(Index) * 2;
      Index := Index + 1;
      exit when Index > 10; --Potential error: Index should be checked before usage
   end loop;
   for I in My_Arr'Range loop
      Put_Line(My_Arr(I)'Img); --Error prone: Integer'Image is used for array elements
   end loop;
end Example;
```