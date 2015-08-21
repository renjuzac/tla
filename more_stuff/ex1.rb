test=["laboratory" , "experiment" ,"Pans Labyrinth" ,"elaborate" ,"polar bear"]

test.each do |value|
  puts value if value.match(/lab/) 
  end