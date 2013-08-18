=begin

Problem Statement

Given an array, return true if all the elements are Fixnums.

You need to write array_of_fixnums? method to accomplish this task.

Example:
Given [1,2,3], the method should return true

=end

def array_of_fixnums?(array)
  fixnum_array = []
  array.each do |x|
    if x.is_a?(Fixnum)
      fixnum_array << x
    end
  end
  fixnum_array == array
end
