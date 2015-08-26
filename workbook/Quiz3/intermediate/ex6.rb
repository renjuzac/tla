def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size >= max_buffer_size
  buffer
end

buffer=[1,2,3]
max_buffer_size=3
new_element=7

p rolling_buffer1(buffer, max_buffer_size, new_element)
p buffer

p "#"*10
buffer=[1,2,3]
input_array=[1,2,3]
max_buffer_size=3
new_element=7
p rolling_buffer2(input_array, max_buffer_size, new_element)
p buffer,input_array