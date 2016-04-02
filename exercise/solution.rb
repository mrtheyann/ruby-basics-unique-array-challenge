require 'wrong/assert'
include Wrong::Assert
Wrong.config.color

a = [1,3,7,3,2,5,1,1]
b = [2,3,5,5,12]
c = []
d = [5, 5, 5, 5, 5, 0]

def unique_array(arr)
#BEGIN
arr = arr.sort
i = 0
if arr.length > 1
  while i <= arr.length-1
    if arr[i] == arr[i+1]
      arr.delete_at(i+1)
    else
      i += 1
    end
  end
end
return arr

#END
end

assert { unique_array(a) == [1,2,3,5,7] }
assert { unique_array(b) == [2,3,5,12] }
assert { unique_array(c) == [] }
assert { unique_array(d) == [0, 5] }
