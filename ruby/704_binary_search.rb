# frozen_string_literal: true

def search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    center = (left + right) / 2
    if nums[center] == target
      return center
    elsif nums[center] > target
      right = center - 1
    elsif nums[center] < target
      left = center + 1
    end
  end
  -1
end

p search([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 20], 5)
p search([-1, 0, 3, 5, 9, 12], 9)
