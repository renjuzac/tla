x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}

my_hash.keys.each {|keys| p keys.class}
my_hash2.keys.each {|keys| p keys.class}