# For example, write out pseudo-code (both casual and formal) that does the following:

# 1. a method that returns the sum of two integers
# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together
# 3. a method that takes an array of integers, and returns a new array with every other element

#INFORMAL
# 1. a method that returns the sum of two integers

# write a method that contains two parameters
# the two parameters represent the two integers that will be added together
# within the method the addition operation of the two integers takes place
# this operation is preceded by the puts method
# the method is ended
# the method is then called and given two integers as arguments

# FORMAL
=begin
Start

DEF numbers_method(parameter a, parameter b)
  PRINT parameter a + parameter b
END

CALL numbers_method(integer 1, integer 2)

END
=end

def addition(a, b)
  puts a + b
end

addition(5, 42)



# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

# INFORMAL
# given an array of strings stored in a variable
# define a method with a parameter that will be the variable representing the array of strings
# use the ".join" method to concatenate the strings together
# store this in a variable
# print the variable containing the concatenated array to the screen
# end the method

# call the method with the name of the array as the argument to be passed to the method

# FORMAL
=begin
START

given an array of strings called strings_array

DEF strings_method(array)
  SET var = array.join
  PRINT var
END

CALL strings_method(strings_array)
=end


strings_array = ["a", "b", "c", "d"]

def strings_method(array)
  var = array.join
  puts var
end

strings_method(strings_array)



# 3. a method that takes an array of integers, and returns a new array with every other element

#INFORMAL
# given an array of integers stored in a variable
# create and empty array to house the newly created array

# iterate through arr by values and index
# find starting point by using the modulo operator to find the 0 index
# push those values to the empty array
# print new_arr using p as it will show the return value


#FORMAL
=begin
START

arr = [1, 2, 3, 4, 5]
SET new_array = []

DEF every_other(array)
  SET var = array
































