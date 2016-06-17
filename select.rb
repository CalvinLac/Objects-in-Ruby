def each_remake (arr)
	my_proc = Proc.new{|num| num.even?}
   i = 0
   secondarr = []
   while i < arr.size
		string = (yield(arr[i])) 
		my_proc.call string 
		secondarr.push string
       i+=1
   end
   secondarr
end
select = each_remake([1,2,3,4]) { |n| n*5 }
print select