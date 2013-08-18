=begin

“99 Bottles of Beer on the Wall.” Write a program that prints out the lyrics
to that beloved classic, “99 Bottles of Beer on the Wall.”

=end

botnum = 99
while botnum > 1
  print "#{botnum.to_s} bottles of beer on the wall. #{botnum.to_s} bottles of beer. Take one down, pass it around..."
  puts
  puts
  botnum = botnum - 1  
end
print "1 bottle of beer on the wall. 1 bottle of beer. Take one down, pass it around, no more bottles of beer on the wall."
