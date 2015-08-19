d = Dir.new(".")
d.each do |entry|
if entry.include?(".txt") then puts entry end
end
