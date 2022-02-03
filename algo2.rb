# Write an algorithm that takes an array and moves all of the zeros to the end, preserving the order of the other elements.
# moveZeros([false,1,0,1,2,0,1,3,"a"]) # returns[false,1,1,2,1,3,"a",0,0]

require "awesome_print"

def move_zeros_at_the_end(array)
  # Collect the zeros
  collected_zeros = array.select {|i| i === 0}

  # Delete all the zeros from the original array
  array.delete_if {|a| a === 0}

  # Append the array containing the zeros to the original array
  array + collected_zeros
end

ap move_zeros_at_the_end([false,1,0,1,2,0,1,3,"a"])

# TIME COMPLEXITY: O(n), because no matter the value of n, the amount of operations will always be the same.
