=begin

Problem Statement

Given a 3 or 4 digit number with distinct digits, return a sorted array of 
all the unique numbers than can be formed with those digits.

Example:
Given: 123
Return: [123, 132, 213, 231, 312, 321] 

Hint

Array#uniq removes duplicates from an array.
Array#shuffle shuffles the elements in an array.
Number of combinations for number with n-digits is factorial of n

=end

def number_shuffle(number)
  places = number.to_s.length
  nums = number.to_s.each_char.to_a
  factorial = (1..places).inject(1) { |total, n| total *= n  }
  combinations = []
  while combinations.length < factorial
    combinations << nums.shuffle.join.to_i
    combinations.uniq!
  end
  return combinations.sort
end
