#HELLO WORLD
#1-print "Hello World" to the console
# puts "Hello World"

#2-Interpolate the adjective variable into the Hello World string using #{}
# adjective = "Big Bad"
# puts "Hello #{adjective} World"

#3-Save "Hello World" to a variable. Without changing the letters in your code manually, permanently change "Hello World" to uppercased letters.
# upper = "Hello World"
# p upper.upcase

#NUMS ARRAY AND ENUMERABLES
nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0, 35, 19, 66, 3, 22, 21, 4, 4, 4, 0, 1, 2, 3, 4, 12, 15]

#1-Use .uniq to print the array with all duplicate entries removed
# puts nums.uniq()

#2-Next, use .push and .pop , .shift .unshift and .length on the array as you would with javaScript (if you need to add a number, add 5)
# A = nums.push(5)
# puts "#{A}"
#
# B = nums.pop
# puts "#{B}"
#
# C = nums.shift
# puts "#{C}"
#
# D = nums.unshift
# puts "#{D}"
#
# E = nums.size
# puts "#{E}"

#3-Use .include? to check if the array contains the number 8
# puts nums.include?(8)

#4-Use .find_all to find all the numbers greater than 10
# puts nums.find_all{|x| x > 10}

#5-use .all? to check if all the numbers are greater than 0?
# puts nums.all?{|b| b>0}

#6-use any? to check if there are any numbers that are divisible by 8
# puts nums.any?{|c| c % 8 == 0}

# #7-use .count to let you know how many numbers are greater than 4
# puts nums.count{|d| d>4}

#8-use .each_with_index to print each item times its index
# nums.each_with_index do |nums, item|
#   puts nums * item
# end

#9-.find the number that is divisible by 7 and 5 and is greater than 0
# puts nums.find { |a| a % 7 == 0 && a % 5 == 0 && a > 0}

#10-.find_index of the number that is divisible by 5 and 7 and is greater than 0
# puts nums.find_index {|b| b % 7 == 0 && b % 5 == 0 && b > 0}

#11-return the .first 3 numbers
# puts nums.first(3)

#12-return the .last 5 numbers
# puts nums.last(5)

#13-.group_by the modulo of 3 ( % 3 )
# puts nums.group_by {|d| d % 3 == 0}

#14-use minmax to return the smallest and largest number
# puts nums.minmax

# #15-use .reject to return all the numbers that are NOT divisible by 3
# puts nums.reject {|e| e % 3 == 0}

#16-use .select to return all the numbers divisible by 5
# puts nums.select {|f| f % 5 == 0}


#COLOR ARRAY
colors = ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

#1-Print out a random color.
# puts colors.sample()

#2-Print out the colors array in reverse order.
# puts colors.reverse

#3-Print out all of the colors in the array with all capital letters.
# puts colors.map {|b| b.upcase}


#METHODS

#Write a method named find_area that finds the area of a rectangle when given values for width and height
# def find_area(height, width)
#   puts (height * width)/2
# end
# find_area(4,2)


#Write a method named multiply_each_by_five that will loop over the given nums array below and print each number multiplied by 5
# nums = [5, 5, 6, 7, 2, 4, 3, 2, 1, 9, 7, 6, 0, 0]
#
# def multiply_each_by_five(nums)
#    nums.each {|b| puts b * 5}
# end
# multiply_each_by_five(nums)



## SuperClass and subclass Practice

# creation of phone superclass
# class Phone
#   # initialize method with phone_argument as parameter
#   def initialize(phone_number)
#     # @number is the label of this instance variable and phone_number is the parameter
#     @number = phone_number
#   end
#   # call method that accepts a parameter equal to other_number
#   def call(other_number)
#     puts "Calling from #{@number} to #{other_number}."
#   end
#   def text(other_number, msg)
#     puts "Sending text from #{@number} to #{other_number}."
#     puts msg
#   end
# end
# class IPhone < Phone
#   def initialize(phone_number)
#     super(phone_number)
#     @fingerprint = nil
#   end
#   def set_fingerprint(fingerprint)
#     @fingerprint = fingerprint
#   end
#   def unlock(fingerprint = nil)
#     if fingerprint == @fingerprint
#       puts "Phone unlocked because no fingerprint has not been set."
#     end
#     if fingerprint == @fingerprint
#       puts "Phone unlocked. Fingerprint matches."
#     else
#       puts "Phone locked. Fingerprint doesn't match."
#     end
#   end
# end
# class AndroidPhone < Phone
#   def initialize(phone_number)
#     super(phone_number)
#     @keyboard = "Default"
#   end
#   def set_keyboard(keyboard)
#     @keyboard = keyboard
#   end
# end
# iphone6 = IPhone.new(3476781232)
# iphone6.call(3476781233)
# iphone6.text(3476781233, "I'm on my way :)")
# iphone6.set_fingerprint(1121)
# iphone6.unlock(1121)