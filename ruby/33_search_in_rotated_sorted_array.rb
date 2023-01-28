# frozen_string_literal: true

# Solution from neetcode video, but i don't understand it
# def search(nums, target)
#   left = 0
#   right = nums.length - 1
#   while left <= right
#     center = (left + right) / 2
#     return center if nums[center] == target
#
#     # left portion of sorted array
#     if nums[left] <= nums[center]
#       if nums[center] < target || nums[left] > target
#         left = center + 1
#       else
#         right = center - 1
#       end
#     # right portion
#     else
#       if nums[center] > target || nums[right] < target
#         right = center - 1
#       else
#         left = center + 1
#       end
#     end
#   end
#   -1
# end

# A bit long, but straightforward: search for the pivot point.
# Than choosing left or right portion from pivot. Than applying regular binary search
def search(nums, target)
  value, index = find_min(nums)
  return index if value == target

  if target <= nums.last
    left = index
    right = nums.length - 1
  else
    left = 0
    right = index - 1
  end

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

def find_min(nums)
  left = 0
  right = nums.length - 1
  result = [nums.first, 0]
  while left <= right
    center = (left + right) / 2
    if nums[center] >= nums.first
      left = center + 1
    else
      result = [nums[center], center] if nums[center] < result[0]
      right = center - 1
    end
  end
  result
end

p search([4, 5, 6, 7, 0, 1, 2], 6)
