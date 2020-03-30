def find_next_square(sq)
    if sq % Math.sqrt(sq) === 0
      square_root = Math.sqrt(sq)
      next_square_root = square_root + 1
      return next_square_root * next_square_root
    else
      return -1
    end
  end