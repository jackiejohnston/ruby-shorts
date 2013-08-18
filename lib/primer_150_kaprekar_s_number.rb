=begin

Problem Statement

9 is a Kaprekar number since
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the 
right n digits to the left n or n-1 digits, the resultant sum is k.

Find if a given number is a Kaprekar number.

=end

def kaprekar?(num)
  sqr = num ** 2
  num_len = num.to_s.length
  sqr_len = sqr.to_s.length
  left = sqr.to_s.slice(0, (sqr_len.to_i - num_len.to_i))
  right = sqr.to_s.slice(left.length, num_len.to_i)
  left.to_i + right.to_i == num
end
