# frozen_string_literal: true

def largest_rectangle_area(heights)
  max_area = 0
  stack = []
  heights.each_with_index do |value, index|
    start = index
    while !stack.empty? && stack[-1][0] > value
      value_tmp, index_tmp = stack.pop
      max_area = [value_tmp * (index - index_tmp), max_area].max
      start = index_tmp
    end
    stack << [value, start]
  end

  stack.each do |value, index|
    max_area = [value * (heights.length - index), max_area].max
  end
  max_area
end

p largest_rectangle_area([2, 1, 5, 6, 2, 3])
