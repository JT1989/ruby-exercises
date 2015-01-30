# Method name: print_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_pyramid(4) should print
#
# *
# **
# ***
# ****
# ***
# **
# *

# This is how we require the print-triangle.rb file in the current folder.
# We can now use the "print_triangle" and "print_line" methods we defined
# there — as if we defined them here!

require_relative './print_triangle'

def print_pyramid(height)
  print_triangle(height)
  (1..(height- 1)).each do |i|
    print_line(height - i)
  end
end

if __FILE__ == $0
  print_pyramid(1)
  print_pyramid(2)
  print_pyramid(3)
  print_pyramid(4)
  print_pyramid(5)
  print_pyramid(6)
  print_pyramid(10)
end