def all_remake (arr)
   i = 0

   secondarr = []
   
   while i < arr.size
		if (yield(arr[i])) == true
			secondarr.push arr[i]
		end			
       i+=1
   end
   if secondarr.size != arr.size
   		secondarr = []
    end 
	secondarr  
end


my_proc = Proc.new {|num| num.even?} #not too sure how to implement
all_true = all_remake ([2,4]) {|num| num.even?}
print all_true