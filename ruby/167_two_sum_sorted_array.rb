def two_sum(numbers, target)
  left = 0
  right = numbers.length - 1
  while left < right
    sum = numbers[left] + numbers[right]
    return [left + 1, right + 1] if sum == target
    if sum < target
      left += 1
    else
      right -= 1
    end
  end
end
