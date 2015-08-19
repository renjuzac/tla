
require 'stringio'
sobj=StringIO.new("another example of writing to a file.\nHere we are with a new line of textWriting to files in Ruby is simple.")
simple= sobj.read(simple)
original=File.new("original_file.txt","w+")

File.open(original,"a") do |file|

file.puts simple

end

puts File.read(original)