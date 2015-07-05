puts "Enter 4 digit number"
number=gets.to_i
puts "Thousands: #{number/1000} ,Hundreds #{ (number%1000)/100} , Tens #{(number%100)/10} , Ones #{number%10}" 

