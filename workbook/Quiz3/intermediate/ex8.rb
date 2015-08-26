def titleize!(param)
  param=param.split(/\s+/).map {|value| value.capitalize}.join(" ")
end

mystr="hello world"
p titleize!(mystr)
p mystr
