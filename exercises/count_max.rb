# Method name: count_max
# Inputs:      A list of numbers
# Returns:     The number of times the largest number in the list
#              appears in the list
# Prints:      Nothing
#
# For example,
#   count_max([10, 1,2,10,10]) == 3
# because "10" is the largest number in the list and it occurs 3 times

# This is how we require the max.rb and count_in_list.rb files in the current folder.
# We can now use the "max" and "count_in_list" methods we defined there — justs
# as if we had defined them here!

require_relative './max'
require_relative './count_in_list'

def count_max(list)								#take the list and look for the highest number.
	count_in_list(list, max(list))	#count how many times this highest number shows in the list
end
  #pro-tip: understand signature
  #You can write this using nothing more than the max and count_in_list
  # methods that you've already written.  You do not HAVE to, but it's worth
  # trying. The "requite_relative" statements above make them available to us, here.
  #
  # But remember: inelegant, working code is better than elegant, unfinished code.


if __FILE__ == $0
	p count_max([10, 1,2,10,10]) == 3
	p count_max([100, 0,5,-1,6.6]) == 1
	p count_max([100, 20, 1, 1, 1, 300, 2, 300]) == 2
	p count_max([8.0, 4.1, 5.4, 2, 8.7]) == 1
	p count_max([0]) == 1
	p count_max([1]) == 1
	p count_max([]) == 0
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
end
