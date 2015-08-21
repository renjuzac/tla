flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones2 = {}

flintstones.each_with_index do |value,index|

  flintstones2[value] =index
  end

p flintstones2