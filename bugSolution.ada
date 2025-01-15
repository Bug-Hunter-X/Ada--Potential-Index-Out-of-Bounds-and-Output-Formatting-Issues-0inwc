```ada
procedure Example_Solution is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
   subtype Positive_Index is Integer range 1..10;
begin
   for I in Positive_Index loop
      My_Arr(I) := My_Arr(I) * 2;
   end loop;
   for I in My_Arr'Range loop
      Put_Line(Integer'Image(My_Arr(I))); --Corrected: Use Integer'Image explicitly
   end loop;
end Example_Solution;
```