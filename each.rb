# my version of the method each

def each_remake (arr)
  i = 0
  while i < arr.size
    yield(arr[i])
    i+=1
  end
  arr
end

each_remake([1,2,3]) { |n| puts n**2 }

