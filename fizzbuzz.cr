module Fizzbuzz
  VERSION = "0.1.0"

  def div_by_three(n : Int32)
    n % 3 == 0
  end

  def div_by_five(n : Int32)
    n % 5 == 0
  end

  def div_by_fifteen(n : Int32)
    n % 15 == 0
  end
end

include Fizzbuzz

(1..100).each do |num|
  answer = if div_by_fifteen num
    "FizzBuzz"
  elsif div_by_three num
    "Fizz"
  elsif div_by_five num
    "Buzz"
  else
    num
  end

  puts answer
end
