# Write a method, pow, that takes two (non-negative, integer) numbers, base 
# and exponent and returns base raised to the exponent power. (No fair using 
# Ruby's base ** exponent notation!).

def pow (base, exponent) 
  result = 1
  exponent.times {result = result * base}
  return result
end
