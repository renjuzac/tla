def checknum(value)
  if value >=0 && value <50 
    return "0 to 50"
  elsif value >=50 &&  value <=100
    return "50 to 100"
  elsif value >100
    return "greater than 100"
    end
end


puts "Enter number between 0 to 100"
value = gets
puts "#{checknum(value.to_i)}"


