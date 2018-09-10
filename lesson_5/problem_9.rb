arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |set|
  set.sort do |a, b|
      b <=> a
  end
end


p arr
