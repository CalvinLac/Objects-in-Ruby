def deepdupe (my_arr)

	first_arr = my_arr.dup
	i = 0
	second_arr = []

	while i > first_arr.size
		first_arr.dup
		second_arr.push first_arr.each
	end 



	nest = second_arr
	print nest
	print nest.object_id 
	puts "hi"
	puts nest[0].object_id	
	puts my_arr[0].object_id


end

deepdupe ([[1,2,3],[5,6,7,8,9,9,9]])