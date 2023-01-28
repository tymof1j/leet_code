# frozen_string_literal: true

def daily_temperatures(temperatures)
  result = [0] * temperatures.length
  stack = []
  temperatures.each_with_index do |temperature, index|
    while !stack.empty? && stack[-1][0] < temperature
      _, stack_index = stack.pop
      result[stack_index] = index - stack_index
    end
    stack << [temperature, index]
  end
  result
end

p daily_temperatures([73, 74, 75, 71, 69, 72, 76, 73])
p daily_temperatures([30, 40, 50, 60])
