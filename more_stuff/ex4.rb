def execute(&block)
  block.call
end

puts execute { puts "Hello from inside the execute method!" }