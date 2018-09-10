arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

arr.map do |sub_set|
  sub_set.select do |num|
      num % 3 == 0
  end
end
