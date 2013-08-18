=begin

Old-school Roman numerals. In the early days of Roman numerals, the
Romans didn’t bother with any of this new-fangled subtraction “IX”
nonsense. No sir, it was straight addition, biggest to littlest—so 9 was
written “VIIII,” and so on. Write a method that when passed an integer
between 1 and 3000 (or so) returns a string containing the proper oldschool
Roman numeral. In other words, old_roman_numeral 4 should return
'IIII'. Make sure to test your method on a bunch of different numbers. Hint:
Use the integer division and modulus methods on page 32.
For reference, these are the values of the letters used:
I = 1 V = 5 X = 10 L = 50 C = 100 D = 500 M = 1000

=end


def roman_old(num)
    if num >= 5000
        puts "Please give me a number under 5000"
    else 
        until num < 1000
            num - 1000
            print "M"
            num -= 1000
        end
        until num < 500
            num - 500
            print "D"
            num -= 500
        end
        until num < 100
            num - 100
            print "C"
            num -= 100
        end
        until num < 50
            num - 50
            print "L"
            num -= 50
        end
        until num < 10
            num - 10
            print "X"
            num -= 10
        end
        until num < 5
            num - 5
            print "V"
            num -= 5
        end
        until num == 0
            num - 1
            print "I"
            num -= 1
        end
    end
end
