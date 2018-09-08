flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

be_index = ''

flintstones.each_with_index do |name, index|
    if name.start_with?("Be")
      be_index = index
      break
    end
  end
p be_index
