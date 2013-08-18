=begin


Problem Statement

Create a method 'random_select' which, when given an array of elements (array)
and a number (n), returns n randomly selected elements from that array.

Example: Given an array [1, 2, 3, 4, 5] and 2 should return two random numbers 
from the given array. (Note: those two random numbers may be the same number.)
The method should return those random values in a new array.

Calling the method twice should ideally return different sets of values 
(though it may not).

Note: Ruby has the method rand which takes a parameter max. It returns a
random number lesser than max.

One more note: Ruby also has a method Array#sample which very concisely solves
this problem. Unfortunately, it's too concise! The exercise is almost to write
your own Array#sample, so it's been disallowed. Good luck!

=end

def random_select(input_array, n)
  return_array = []
  n.times do
    return_array << input_array[rand(input_array.count + 1)] 
  end
  return return_array
end
