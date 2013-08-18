=begin

“Modern” Roman numerals. Eventually, someone thought it would be terribly
clever if putting a smaller number before a larger one meant you
had to subtract the smaller one. As a result of this development, you must
now suffer. Rewrite your previous method to return the new-style Roman
numerals so when someone calls roman_numeral 4, it should return 'IV'.

=end

def toga_me(num)
    my_str = ""
    temp_num = num
    if num < 5000
        if temp_num >= 1000
            my_str += "M" * (temp_num/1000)
            temp_num = temp_num%1000
        end
        if temp_num >= 500
            my_str += "D"
            temp_num = temp_num%500   
        end
        if temp_num >= 100
            my_str += "C" *(temp_num/100)
            temp_num = temp_num%100
        end
        if temp_num >= 50
            my_str += "L"
            temp_num = temp_num%50
        end
        if temp_num >= 10
            my_str += "X" *(temp_num/10)
            temp_num = temp_num%10
        end
        if temp_num >= 5
            my_str += "V"
            temp_num = temp_num%5
        end
        if temp_num >= 1
            my_str += "I" *(temp_num/1)
        end 
        my_str = my_str.gsub("DCCCC", "CM")
        my_str = my_str.gsub("CCCC", "CD")
        my_str = my_str.gsub("LXXXX", "XC")
        my_str = my_str.gsub("XXXX", "XL")
        my_str = my_str.gsub("VIIII", "IX")
        my_str = my_str.gsub("IIII", "IV")
        return my_str
    else
        puts "Sorry, I don't know how to calculate Roman numerals that high. Please use a number under 5000."
    end
end
