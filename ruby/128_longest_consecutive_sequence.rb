require 'set'

# my solution
# def longest_consecutive(nums)
#   set = Set.new(nums)
#   count = 1
#   max_sequence = 0
#   nums.each_with_index do |num, ind|
#     next if set.include?(num - 1)
#
#     comparing_value = num + 1
#     max_sequence = count if count > max_sequence
#     while set.include?(comparing_value)
#       count += 1
#       p "#{comparing_value}, yes, #{count}"
#       max_sequence = count if count > max_sequence
#       comparing_value += 1
#       p "#{comparing_value} = cmp value"
#     end
#     count = 1
#   end
#   max_sequence
# end

# neet code solution
def longest_consecutive(nums)
  set = Set.new(nums)
  set.reduce(0) do |longest, num|
    if !set.include?(num-1)
      length = 0
      while set.include?(num + length) do
        length += 1
      end
      next(longest > length ? longest : length)
    end

    longest
  end
end

puts longest_consecutive([100,4,200,1,3,2])
