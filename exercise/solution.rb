require 'wrong/assert'
include Wrong::Assert
Wrong.config.color

a = [1,3,7,3,2,5,1,1]
b = [2,3,5,5,12]

a = a.sort

assert { a == [1, 1, 1,2,3,3,5,7] }
