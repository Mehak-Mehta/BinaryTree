function fizzbuzz(n) 
  if n % 3 == 0 and n % 5 == 0 then 
    return "FizzBuzz" 
  elseif n % 3 == 0 then 
    return "Fizz" 
  elseif n % 5 == 0 then 
    return "Buzz" 
  else 
    return tostring(n) 
  end 
end 
 
for i = 1, 100 do 
  print(fizzbuzz(i)) 
end 
