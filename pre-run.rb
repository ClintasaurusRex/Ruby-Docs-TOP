num_arr1 = Array(1..10)
num_arr2 = Array(5..10)


p num_arr1.reverse.last(3)
num_arr1.map do |e|
 if e.odd?
  num_arr2.unshift(e)
end
end
p num_arr2.inspect
    


