# frozen_string_literal: true

# first solution, time complexity isn't that bad, but definetly can be improved.
# def is_palindrom(string)
#   string.downcase!.gsub!(/[^a-z]/, '')
#   string == string.reverse
# end

# using two pointers: beats 96% of solutions in used memory, but only 5% in speed
def is_palindrome(s)
  return true if s.length == 1

  left = 0
  right = s.length - 1
  s = s.downcase
  array = ('a'..'z').to_a + ('0'..'9').to_a
  while left < right
    unless array.include?(s[left])
      left += 1
      next
    end
    unless array.include?(s[right])
      right -= 1
      next
    end
    return false unless s[left] == s[right]

    left += 1
    right -= 1
  end
  true
end

puts is_palindrome('0P')
