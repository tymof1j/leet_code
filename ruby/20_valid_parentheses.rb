# frozen_string_literal: true

# works in O(n) time complexity
def is_valid(s)
  lookup = {
    ')' => '(',
    ']' => '[',
    '}' => '{'
  }
  stack = []
  s.chars do |char|
    if ['(', '[', '{'].include?(char)
      stack.push(char)
    else
      return false unless stack.last == lookup[char]

      stack.pop
    end
  end
  stack.empty? ? true : false
end

p is_valid('(]')
p is_valid('(({[]}))')
