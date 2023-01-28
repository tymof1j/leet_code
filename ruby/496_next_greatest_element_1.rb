# frozen_string_literal: true

def next_greater_element(nums1, nums2)
  result = []
  nums2_map = {}
  stack = []

  nums2.each do |n|
    nums2_map[stack.pop] = n while !stack.empty? && stack[-1] < n
    stack.push(n)
  end

  nums1.each { |n| result.push(nums2_map[n] || -1) }

  result
end

p next_greater_element([4, 1, 2], [1, 3, 4, 2])
