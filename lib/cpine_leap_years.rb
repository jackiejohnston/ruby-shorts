=begin

Leap years. Write a program that asks for a starting year and an ending
year and then puts all the leap years between them (and including them,
if they are also leap years). Leap years are years divisible by 4 (like 1984
and 2004). However, years divisible by 100 are not leap years (such as
1800 and 1900) unless they are also divisible by 400 (such as 1600 and
2000, which were in fact leap years). What a mess!

=end

puts "We are going to see which years are leap years within in a range."
puts "What year would you like to start with?"
start_year = gets.chomp.to_i
puts "What year would you like to end with?"
end_year = gets.chomp.to_i
puts "Here is a list of leap years between #{start_year} and #{end_year}:"
year = start_year
while year <= end_year
    if year%400 == 0
        puts year.to_s
    elsif (year%100 > 0) && (year%4 == 0)
        puts year.to_s    
    end
    year += 1
end
