# frozen_string_literal: true

def find_min(nums)
  left = 0
  right = nums.length - 1
  result = nums.first
  while left <= right
    center = (left + right) / 2
    if nums[center] > nums.first
      left = center + 1
    else
      result = nums[center] if result.nil?
      result = [result, nums[center]].min
      right = center - 1
    end
  end
  result
end

p find_min([3, 4, 5, 1, 2])
