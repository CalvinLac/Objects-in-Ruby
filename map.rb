def map_remake (arr)
   secondarr = []
   i = 0
   while i < arr.size
       secondarr << (yield(arr[i]))
       i+=1
   end
   secondarr
end

mapps = map_remake([1,2,3]) { |n| n**2 }
print mapps
