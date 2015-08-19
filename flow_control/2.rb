def change_case(value)
  if value.length >10
    return value.upcase
  end
end

puts change_case("test")
puts change_case("thisislonger")