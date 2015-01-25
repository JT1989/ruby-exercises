# Method name: shortest_string(list)
# Inputs:      a list of strings
# Returns:     the shortest string in the list
# Prints:      Nothing

# For example, shortest_string(["a", "zzzz", "cd"]) should return "a" since
def shortest_string(list)
	shortest_string_so_far = list.first
	list.each do |item|
		if shortest_string_so_far.length < item.length
			then shortest_string_so_far == item
		end
end
return shortest_string_so_far
end
	#look at the entire list, make the first element equal to the shortest string
	#look at the second one and see if it's < the shortest string so far.
	# if it is the shortest one, then thats the new shortest string.
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
