def factors(number)
  dividend = number
  divisors = []
  while dividend >0
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end 
  divisors        # return value of function
end

p factors(500)
p factors(0)
p factors(-1)