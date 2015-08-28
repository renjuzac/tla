munsters = { 
  "Herman" => { "age" => 32, "gender" => "male" }, 
  "Lily" => { "age" => 30, "gender" => "female" }, 
  "Grandpa" => { "age" => 402, "gender" => "male" }, 
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do | key,value|
  case
    when  (0..17).cover?(value["age"] )
      value["age_group"] = "kid"

    when  (18..64).cover?(value["age"] )
    value["age_group"] = "adult"

    when value["age"].to_i > 64
    value["age_group"] = "senior"

  end
end

p munsters