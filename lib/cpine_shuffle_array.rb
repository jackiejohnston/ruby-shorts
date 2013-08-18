=begin

Shuffle. Now that you’ve finished your new sorting algorithm, how about
the opposite? Write a shuffle method that takes an array and returns a totally
shuffled version. As always, you’ll want to test it, but testing this
one is trickier: How can you test to make sure you are getting a perfect
shuffle? What would you even say a perfect shuffle would be? Now test
for it.

=end

def shuffle(given_arr)
    new_arr = []
    while given_arr.length > 0
        num = rand(given_arr.length)
        addthis = given_arr[num]
        new_arr.push("#{addthis}")
        given_arr.delete_at(num)
    end
    return new_arr
end

=begin

Here's the recursive version:

def shuffle(given_arr, new_arr=[])
    if given_arr.length > 0
        num = rand(given_arr.length)
        addthis = given_arr[num]
        new_arr.push("#{addthis}")
        given_arr.delete_at(num)
        shuffle(given_arr, new_arr)
    else
        return new_arr
    end    
end

Chris Pine's much simpler solution:

def shuffle arr
arr.sort_by{rand}
end

=end
