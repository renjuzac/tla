def is_a_number?(word) 
  if matched_value= word.match(/\d+/)
     return matched_value[0]==word
  end
end 

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  unless (dot_separated_words.size==4) 
      return false
  end
  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    if !is_a_number?(word)
      return false
    end
  end
  return true
end

p "1.2.3.4 #{dot_separated_ip_address?("1.2.3.4")}"
p "1.2.3.d #{dot_separated_ip_address?("1.2.3.d")}"
p "a.b.c.d  #{dot_separated_ip_address?("a.b.c.d")}"
p "9.99.9.9.9  #{dot_separated_ip_address?("9.99.9.9.9")}"