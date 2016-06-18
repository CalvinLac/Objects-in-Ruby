def select_remake (arr)
   i = 0
   secondarr = []
   while i < arr.size
		if (yield(arr[i])) 
		secondarr.push arr[i]
	end
       i+=1
   end
   secondarr
end
my_proc = Proc.new {|num| num.even?} #not too sure how to implement
select = select_remake ([1,2,3,4]) {|num| num.even?}
print select