flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map do |name|
   until name.length == 3
     name.chop!
   end
end


puts flintstones
