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