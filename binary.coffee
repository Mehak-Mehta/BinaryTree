for num in [0..100]
    out = num + " "
    if num % 3 == 0 then out += "Fizz"
    if num % 5 == 0 then out += "Buzz"
    if num % 3 == 0 & num % 5 == 0 then out += "FizzBuzz"
    console.log out
