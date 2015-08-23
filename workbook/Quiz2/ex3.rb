ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
puts ages.select {|index,value| value <100}

puts ages.keep_if {|index,value| value <100}
puts ages