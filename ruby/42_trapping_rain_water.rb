# frozen_string_literal: true

# we should do [left, right].min - current. this takes O(n) space
# def trap(height)
#   return 0 if height.length < 3
#
#   result = 0
#   left = 0
#   right = height.length - 1
#   left_bounds = []
#   right_bounds = []
#   max_left_bound = 0
#   max_right_bound = 0
#   while left <= height.length - 1
#     left_bounds << 0 if left.zero?
#     max_left_bound = height[left] if height[left] > max_left_bound
#     left_bounds << max_left_bound
#     left += 1
#   end
#
#   while right >= 0
#     right_bounds << 0 if right == height.length - 1
#     max_right_bound = height[right] if height[right] > max_right_bound
#     right_bounds.unshift(max_right_bound)
#     right -= 1
#   end
#
#   height.each_with_index do |current_height, i|
#     next if [0, height.length - 1].include?(i)
#
#     current_cell = [left_bounds[i], right_bounds[i]].min - current_height
#     result += current_cell if current_cell.positive?
#   end
#   result
# end

# this takes O(1) space
def trap(height)
  left = 1
  right = height.length - 2
  max_left = height[0]
  max_right = height[-1]
  total = 0

  while left <= right
    if max_left <= max_right
      total += max_left - height[left] if (max_left - height[left]).positive?
      max_left > height[left] || max_left = height[left]
      left += 1
    else
      total += max_right - height[right] if (max_right - height[right]).positive?
      max_right > height[right] || max_right = height[right]
      right -= 1
    end
  end
  total
end

puts trap([4, 2, 0, 3, 2, 5])
