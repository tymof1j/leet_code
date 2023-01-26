def three_sum(nums)
  nums.sort!
  answer = []
  nums.each_with_index do |first, index|
    next if index.positive? && first == nums[index - 1]

    left = index + 1
    right = nums.length - 1
    while left < right
      sum = first + nums[left] + nums[right]
      if sum.positive?
        right -= 1
      elsif sum.negative?
        left += 1
      else
        answer << [first, nums[left], nums[right]]
        left += 1
        while nums[left] == nums[left - 1] && left < right
          left += 1
        end
      end
    end
  end
  answer
end

p three_sum([-1,0,1,2,-1,-4])
