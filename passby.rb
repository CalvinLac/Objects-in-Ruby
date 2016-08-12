def deepdupe (my_arr)

  first_arr = my_arr.dup
  i = 0
  second_arr = []

  first_arr.each do |n|
    second_arr.push n.dup 
  end 

nest = second_arr
print "#{nest}\n"
puts "Object ID for my_arr is #{my_arr.object_id}"
puts "Object ID for nest is #{nest.object_id}"
puts "Object ID for nest[0] is #{nest[0].object_id}"
puts "Object ID for my_arr[0] is #{my_arr[0].object_id}"

end

deepdupe ([[1,2,3],[5,6,7,8,9,9,9]])