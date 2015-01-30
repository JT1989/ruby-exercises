# Method name: print_horizontal_pyramid
# Input: a number n
# Returns: Nothing
# Prints: a pyramid consisting of "*" characters that is "n" characters tall at its tallest
#
# For example, print_horizontal_pyramid(4) should print
#
#    *
#   ***
#  *****
# *******




def print_horizontal_pyramid(height)

  (1..height).each do |i|
  spaces = height - i
  stars = (2 * i) - 1

  spaces.times { print " "}
  stars.times { print "*"}
  spaces.times { print " "}
  print "\n"
end
end

if __FILE__ == $0
  print_horizontal_pyramid(0)
  print_horizontal_pyramid(1)
  print_horizontal_pyramid(2)
  print_horizontal_pyramid(3)
  print_horizontal_pyramid(4)
  print_horizontal_pyramid(5)
  print_horizontal_pyramid(10)
  print_horizontal_pyramid(15)
  print_horizontal_pyramid(20)
  print_horizontal_pyramid(25)
end

# 4
# print " "
# print " "
# print " "     print 3 spaces
# print "*"    print 1 star
# print " "    print 3 spaces
# print " "
# print " "

# print " "     print 2 spaces
# print " "
# print "***"   print 3 stars (i + (i-1)) = 2i -1
# print " "     print 2 spaces
# print " "


# print " "     print 1 space
# print "*****"   print 5 stars (i + (i-1))
# print " "   print 1 space

# print "*******" print 0  space print 7 stars (i + (i-1))
