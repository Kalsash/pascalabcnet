﻿//!Использование exit, break и continue в блоке finally недопустимо
begin
  var k := 0;
  for var i := 1 to 3 do
  try
    
  finally
     for var j := 1 to 10 do
       begin
         k := j;
         continue;
       end;
     break;  
  end;
  assert(k = 1);
end.