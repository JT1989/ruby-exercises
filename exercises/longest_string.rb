# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
		longest_so_far = list.first 	#look at the first element of the list. use that as the longest string.
		list.each do | string |				#move through the array. make the next element a placeholder.
			if string.length > longest_so_far.length #if this new placeholder value is longer than the longest_so_far length
				longest_so_far = string               	#then the NEW longest string is that placeholder. REPEAT.
		end
	end
	return longest_so_far
end

#how do you know how many ends you need?

if __FILE__ == $0
	p longest_string(["a","zzzz","c"]) == "zzzz"
	p longest_string(["cat","dog","c"]) == "cat"
	p longest_string(["bomb","diggity","diggity"]) == "diggity"
end