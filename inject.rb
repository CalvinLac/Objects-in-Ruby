#WIP


def inject_remake (arr)
   i = 0
   last_result = 0
   secondarr = []
   new_result = 0 
   
   while i < arr.size
	    (yield(arr[i]))
      arr.shift

       i+=1
   end 
	arr
end

 #not too sure how to implement proc 
inject = inject_remake ([2,4,5,6]) {|a,b| a+b }
print inject