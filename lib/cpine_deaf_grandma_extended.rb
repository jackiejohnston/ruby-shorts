=begin

Deaf grandma extended. What if Grandma doesn’t want you to leave?
When you shout BYE, she could pretend not to hear you. Change your
previous program so that you have to shout BYE three times in a row.
Make sure to test your program: if you shout BYE three times but not in
a row, you should still be talking to Grandma.

=end

byecount = 0
puts 'HELLO, YOUNG WHIPPER-SNAPPER.'
while true
    input = gets.chomp
    if input == 'BYE'
        byecount = byecount + 1
        if byecount == 3
            break
        elsif puts 'SPEAK UP! I CAN\'T HEAR YOU'
        end
    else
        byecount = 0
        if input == input.upcase
            year = rand(21) + 1930
            puts 'NO! NOT SINCE ' + year.to_s + '!'
        else
            puts 'SPEAK UP! I CAN\'T HEAR YOU'
        end
    end    
end
puts 'GOODBYE. DON\'T FORGET TO VISIT YOUR GRANNY MORE OFTEN'
