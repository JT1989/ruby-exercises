# Method name: time_format
# Inputs:      A number, representing seconds
# Returns:     A string, describing the number of weeks, days, minutes, seconds
# Prints:      Nothing

# Remember when we wrote the countdown clock to count down from 5 minutes?
# Let's write a method that takes in an integer, representing a number of
# seconds, and returns a string describing larger chunks of time.  For example,
#
#   time_format(1234)  == "20m 34s"
#   time_format(12345) == "3h 25m 45s"
#
# This should support weeks, days, hours, minutes, and seconds.


def time_format(seconds)

  if seconds < 60
    return "#{seconds}s"

  elsif seconds <= 3599
  mm, ss = seconds.divmod(60)
    return "%dm %ds" % [mm, ss]

  elsif seconds <= 86399
  mm, ss = seconds.divmod(60)
  hh, mm = mm.divmod(60)
    return "%dh %dm %ds" % [hh, mm, ss]

  elsif seconds <= 604799
  mm, ss = seconds.divmod(60)
  hh, mm = mm.divmod(60)
  dd, hh = hh.divmod(24)
    return "%dd %dh %dm %ds" % [dd, hh, mm, ss]

  else seconds >= 604800
  mm, ss = seconds.divmod(60)
  hh, mm = mm.divmod(60)
  dd, hh = hh.divmod(24)
  ww, dd = dd.divmod(7)
    return "%dw %dd %dh %dm %ds" % [ww, dd, hh, mm, ss]

  end
end

if __FILE__ == $0
  # Write your own test cases!  These four won't suffice.
  # Notice that we're looking at "edge" cases. We likely want to test
  # the boundaries where the parts "flip over", and also one output on
  # each side of that boundary, i.e., exactly 1 hour, 1 hour plus 1 second,
  # and 1 hour minute 1 second.
  #
  # Why? This is where our code is most likely to "go wrong."

  p time_format(0)    == "0s"
  p time_format(1)    == "1s"

  p time_format(59)   == "59s"

  p time_format(60)   == "1m 0s"
  p time_format(61)   == "1m 1s"
  p time_format(120)   == "2m 0s"
  p time_format(1234)  == "20m 34s"

  p time_format(3600) == "1h 0m 0s"
  p time_format(12345) == "3h 25m 45s"

  p time_format(86400) == "1d 0h 0m 0s"

  p time_format(604800) == "1w 0d 0h 0m 0s"
end
