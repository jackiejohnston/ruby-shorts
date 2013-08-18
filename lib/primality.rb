#  Write a method, is_prime?, that takes a number num and returns true if it 
#  is prime and false otherwise.
#
#  A prime number is greater than 1 and has no positive divisors other than 1 
#  and itself.
#
#  You may wish to use the modulo operation: 5 % 2 returns the remainder when 
#  dividing 5 by 2: 1. If num is divisible by i, then num % i == 0.

def is_prime?(num)
    if num > 1
        (2...num).each do |i|
            if num % i > 0
                # keep looping
            else
                return false
                break
            end
        end
        return true
    else
        return false
    end
end
