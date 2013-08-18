=begin

Building and sorting an array. Write the program we talked about at the
beginning of this chapter, one that asks us to type as many words as we
want (one word per line, continuing until we just press Enter on an
empty line) and then repeats the words back to us in alphabetical order.
Make sure to test your program thoroughly; for example, does hitting
Enter on an empty line always exit your program? Even on the first line?
And the second? Hint: There’s a lovely array method that will give you a
sorted version of an array: sort. Use it!

=end

thelist = []
puts 'Write me a word and push Enter. If you just push Enter without a' 
puts 'word I will tell your list of words in alphabetical order. That is'
puts 'if you have already given me word(s).'
theword = gets.chomp.to_s
while true
    if theword != ''
        thelist.push theword
        puts 'Another word?'
        theword = gets.chomp.to_s
    elsif theword == ''
        break
    end
end
if thelist.length > 0
    puts thelist.sort
else
    puts 'Fine. Be that way. Don\'t talk to me.'
end
