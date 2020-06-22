# Find the next perfect square!

# You might know some pretty large perfect squares. But what about the NEXT one?
# Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter. Recall that an integral perfect square is an integer n such that sqrt(n) is also an integer.
# If the parameter is itself not a perfect square, than -1 should be returned. You may assume the parameter is positive.
# Examples:

# findNextSquare(121) --> returns 144
# findNextSquare(625) --> returns 676
# findNextSquare(114) --> returns -1 since 114 is not a perfect


def find_next_square(sq)
    if sq % Math.sqrt(sq) === 0
      square_root = Math.sqrt(sq)
      next_square_root = square_root + 1
      return next_square_root * next_square_root
    else
      return -1
    end
  end


# ------------------------------------------------------------------------------------------------------------------------------------------------


# Array.diff


# Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

# It should remove all values from list a, which are present in list b.

# array_diff([1,2],[1]) == [2]
# If a value is present in b, all of its occurrences must be removed from the other:

# array_diff([1,2],[1]) == [2]

# def array_diff(a, b)
#   #your code here
#   new_array = []
#   a.each do |n|
#     if !b.include?(n)
#       new_array << n
#     end
#   end
  
#   return new_array
# end

def array_diff(a, b)
  a - b
end

# ------------------------------------------------------------------------------------------------------------------------------------------------
# Counting Valleys HackerRank
# Gary is an avid hiker. He tracks his hikes meticulously, paying close attention to small details like topography. During his last hike he took exactly  steps. For every step he took, he noted if it was an uphill, , or a downhill,  step. Gary's hikes start and end at sea level and each step up or down represents a  unit change in altitude. We define the following terms:

# A mountain is a sequence of consecutive steps above sea level, starting with a step up from sea level and ending with a step down to sea level.
# A valley is a sequence of consecutive steps below sea level, starting with a step down from sea level and ending with a step up to sea level.
# Given Gary's sequence of up and down steps during his last hike, find and print the number of valleys he walked through.

# For example, if Gary's path is , he first enters a valley  units deep. Then he climbs out an up onto a mountain  units high. Finally, he returns to sea level and ends his hike.

# Function Description

# Complete the countingValleys function in the editor below. It must return an integer that denotes the number of valleys Gary traversed.

# countingValleys has the following parameter(s):

# n: the number of steps Gary takes
# s: a string describing his path

# Solution

def countingValleys(n, s)
  elevation = 0
  valley_count = 0
  steps = s.split('')
  steps.each do |s|
      if s == "U"
          elevation += 1
      elsif s == "D" && elevation == 0
          valley_count += 1
          elevation -= 1
      elsif s == "D"
          elevation -= 1
      end
  end

return valley_count
end


# ------------------------------------------------------------------------------------------------------------------------------------------------
# Jumping clouds HackerRank
# Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.

# For each game, Emma will get an array of clouds numbered  if they are safe or  if they must be avoided. For example,  indexed from . The number on each cloud is its index in the list so she must avoid the clouds at indexes  and . She could follow the following two paths:  or . The first path takes  jumps while the second takes .

# Function Description

# Complete the jumpingOnClouds function in the editor below. It should return the minimum number of jumps required, as an integer.

# jumpingOnClouds has the following parameter(s):

# c: an array of binary integers

def jumpingOnClouds(c)
  jump_count = 0
  i = 0
  until i == c.length - 1 do
      next_two = c[i+2]
      if next_two == 0
          i += 2
          jump_count += 1
      else
          i += 1
          jump_count += 1
      end
  end
return jump_count
end



# ------------------------------------------------------------------------------------------------------------------------------------------------
# Lilah has a string, , of lowercase English letters that she repeated infinitely many times.

# Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.

# For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.

# Function Description

# Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.

# repeatedString has the following parameter(s):

# s: a string to repeat
# n: the number of characters to consider

def repeatedString(s, n)
  count = s.count("a")
  rep = (n / s.length)
  if n % s.length != 0
      short_s = s.slice(0, n % s.length)
      return (count * rep) + short_s.count("a")
  else
      return (count * rep)
  end
  
end

# ------------------------------------------------------------------------------------------------------------------------------------------------
#HackerRank 2d array
# Given a  2D Array, :

# 1 1 1 0 0 0
# 0 1 0 0 0 0
# 1 1 1 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# 0 0 0 0 0 0
# We define an hourglass in  to be a subset of values with indices falling in this pattern in 's graphical representation:

# a b c
#   d
# e f g
# There are  hourglasses in , and an hourglass sum is the sum of an hourglass' values. Calculate the hourglass sum for every hourglass in , then print the maximum hourglass sum.

# For example, given the 2D array:

# -9 -9 -9  1 1 1 
#  0 -9  0  4 3 2
# -9 -9 -9  1 2 3
#  0  0  8  6 6 0
#  0  0  0 -2 0 0
#  0  0  1  2 4 0
# We calculate the following  hourglass values:

# -63, -34, -9, 12, 
# -10, 0, 28, 23, 
# -27, -11, -2, 10, 
# 9, 17, 25, 18
# Our highest hourglass value is  from the hourglass:

# 0 4 3
#   1
# 8 6 6
# Note: If you have already solved the Java domain's Java 2D Array challenge, you may wish to skip this challenge.

# Function Description

# Complete the function hourglassSum in the editor below. It should return an integer, the maximum hourglass sum in the array.

# hourglassSum has the following parameter(s):

# arr: an array of integers
# Input Format

# Each of the  lines of inputs  contains  space-separated integers .

# Constraints

# Output Format

# Print the largest (maximum) hourglass sum found in .

#!/bin/ruby

require 'json'
require 'stringio'

# Complete the hourglassSum function below.
def hourglassSum(arr)
    new_arr = arr.flatten
    hourglass_arr = []
    i = 0
  until i == 22
    if i != 4 && i != 5 && i != 10 && i != 11 && i != 16 && i != 17
      hourglass_sum = new_arr[i] + new_arr[i+1] + new_arr[i+2] + new_arr[i+7] + 
      new_arr[i+12] + new_arr[i+13] + new_arr[i+14]
      hourglass_arr << hourglass_sum
    end
    i += 1
  end
  return hourglass_arr.max
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr = Array.new(6)

6.times do |i|
    arr[i] = gets.rstrip.split(' ').map(&:to_i)
end

result = hourglassSum arr

fptr.write result
fptr.write "\n"

fptr.close()
