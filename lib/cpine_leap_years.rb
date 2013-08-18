=begin

Leap years. Write a program that asks for a starting year and an ending
year and then puts all the leap years between them (and including them,
if they are also leap years). Leap years are years divisible by 4 (like 1984
and 2004). However, years divisible by 100 are not leap years (such as
1800 and 1900) unless they are also divisible by 400 (such as 1600 and
2000, which were in fact leap years). What a mess!

=end

puts 'We are going to see which years are leap years within in a range.'
puts 'What year would you like to start with?'
startyear = gets.chomp.to_i
puts 'What year would you like to end with?'
endyear = gets.chomp.to_i
puts 'Here is a list of leap years between ' + startyear.to_s + ' to ' + endyear.to_s + ":"
while startyear <= endyear
    if startyear%400 == 0
        puts startyear.to_s
    elsif (startyear%100 > 0) && (startyear%4 == 0)
        puts startyear.to_s    
    end
    startyear=startyear+1
end
