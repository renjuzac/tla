def execute(&block)
  block
end

puts execute { puts "Hello from inside the execute method!" }