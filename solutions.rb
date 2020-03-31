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

def array_diff(a, b)
  #your code here
  new_array = []
  a.each do |n|
    if !b.include?(n)
      new_array << n
    end
  end
  
  return new_array
end


# ------------------------------------------------------------------------------------------------------------------------------------------------