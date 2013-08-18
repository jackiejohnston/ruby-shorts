#  Write a method, sum which takes an array of numbers and returns the sum of 
#  the numbers.

def sum(nums)
  total = 0
  nums.each {|num| total = total + num}
  return total
end
