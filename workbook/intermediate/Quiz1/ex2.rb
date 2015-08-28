statement = "The Flintstones Rock"

my_hash={}
statement=statement.upcase.gsub(/\s+/,"")
p statement
statement.split(//).each do |value|

  if my_hash[value]  
    my_hash[value]=my_hash[value]+1
  else
    my_hash[value]=1
  end
end
p my_hash