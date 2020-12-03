def sum_with_for(min, max)
  # CONSTRAINT: you should use a for..end structure
  if min >= max
    return -1
  else
    sum = 0
    for num in (min..max)
      sum = sum + num
end
    return sum
  end
end

def sum_with_while(min, max)
  # CONSTRAINT: you should use a while..end structure
  if min >= max
    return -1
  else
    sum = 0
    while min <= max
      sum = sum + min
      min = min + 1
    end
    return sum
  end
end


