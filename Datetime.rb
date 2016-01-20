#get current date and time

time1 = Time.new

puts "Current time: " + time1.inspect

#Time.now is a synonym:

time2 = Time.now
puts "Current time: " + time2.inspect

#getting component of a date & time

time = Time.new

#Component of a time
puts "Current time: " + time.inspect
puts time.year
puts time.month
puts time.day
puts time.wday
puts time.yday
puts time.hour
puts time.min
puts time.sec
puts time.usec
puts time.zone

#time.utc, time.gm and time.local functions

time = Time.new

values = time.to_a
puts values

puts Time.utc(*values)

#return number of seconds since epoch
time = Time.now.to_i
puts time

#convert number of seconds into Time object
Time.at(time)
puts time

#return second since epoch which includes microseconds
time = Time.now.to_f
puts time

#timezones and daylight savings time

time = Time.new

#here is the interpretation
time.zone # => "UTC: return the timezone"
time.utc_offset # => 0: UTC is 0 seconds offset from UTC
time.zone # =>  "PST" (or whatever your timezone is)
time.isdst # => false: If t is in UTC time zone
time.utc? # => true : if t is in UTC time zone
time.localtime # convert to local timezone
time.gmtime # convert back to UTC
time.getlocal # return a new time object in local zone
time.getutc # return a new time object in UTC

#formatting times and dates
time = Time.new

puts time.to_s
puts time.ctime
puts time.localtime
puts time.strftime("%Y-%m-%d %H:%M:%S")

#time arithmetic
now = Time.now #Current time
puts now

past = now - 10 # 10 seconds ago. Time - number => Time
puts past

future = now + 10 # 10 seconds from now. Time + number => Time
puts future

diff = future - now # => 10 Time - Time => number of seconds
puts diff