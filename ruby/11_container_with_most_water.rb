# frozen_string_literal: true

def max_area(height)
  result = 0
  left = 0
  right = height.length - 1
  while left < right
    current_area = [height[left], height[right]].min * (right - left)
    result > current_area || result = current_area
    height[left] < height[right] ? left += 1 : right -= 1
  end
  result
end

puts max_area([1, 8, 6, 2, 5, 4, 8, 3, 7])
