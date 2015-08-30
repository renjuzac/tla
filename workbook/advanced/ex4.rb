#Each UUID consists of 32 hexadecimal characters, and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

#It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"\


def uuid

keys =[]
8.times {keys <<rand(65535).to_s(16)  }
return "#{keys[0]+keys[1]}-#{keys[2]}-#{keys[3]}-#{keys[4]}-#{keys[5]+keys[6]+keys[7]}"

end

puts uuid