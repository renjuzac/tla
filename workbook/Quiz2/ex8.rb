flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
x= flintstones.map{|value| !!value.match("Be")}
puts x.index(true)