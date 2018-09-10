#given this nested hash, figure out the total age of just the male members


munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum = 0
munsters.each_value do |name|
  if name["gender"] == 'male'
    sum += name["age"]
  end
end

puts sum
