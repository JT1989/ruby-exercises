# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

# For example, shortest_string(["a", "zzzz", "cd"]) should return "a" since
def shortest_string(list)							#define the method
	shortest_string_so_far = list.first #look at the entire list, make the first element equal to the shortest string
	list.each do |string|									#go through each item in the list, place it in the |placeholder| area
		if string.length < shortest_string_so_far.length #if the length of the placeholder < the shortest string so far.
			shortest_string_so_far = string #then the new shortest item is the item
		end
	end
	return shortest_string_so_far
end
 # This is your job. :)

if __FILE__ == $0

	p shortest_string(["a","zzzz","cd"]) == "a"
	p shortest_string(["apple", "kitchen", "shadows"]) == "apple"
	p shortest_string(["dog", "mice", "cats"]) == "dog"
	p shortest_string(["bomb","diggity","diggity"]) == "bomb"
	p shortest_string(["SF","LAX","NYC"]) == "SF"
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
end
