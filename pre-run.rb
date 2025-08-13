num_arr1 = Array(1..10)
num_arr2 = Array(5..10)
str_arr = Array("a".."z")

common = num_arr1.concat(num_arr2)
p common.count(7)
p str_arr

str_arr.each_with_index do |e, i|
  p "#{i}: #{e}"
end

