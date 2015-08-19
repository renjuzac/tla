words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

sorted=  words.map {|word| word.split(//).sort.join}
results ={}
sorted.each_with_index do |x,idx| 
  if results.has_key?(x)
    results[x]<<words[idx]
  else
    results[x]=[words[idx]]
  end
end

results.values.each {|x| puts "\# #{ x.to_s}"}

# ["demo", "dome", "mode"]
# ["none", "neon"]
# ["tied", "diet", "edit", "tide"]
# ["evil", "live", "veil", "vile"]
# ["fowl", "wolf", "flow"]
