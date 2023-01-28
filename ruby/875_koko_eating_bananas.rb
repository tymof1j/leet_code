# frozen_string_literal: true

def min_eating_speed(piles, h)
  left = 1
  right = piles.max
  result = right
  while left <= right
    medium_speed = (left + right) / 2
    time = 0
    piles.each { |pile| time += (pile.to_f / medium_speed).ceil }
    if time <= h
      result = [result, medium_speed].min
      right = medium_speed - 1
    else
      left = medium_speed + 1
    end
  end
  result
end

 p min_eating_speed([3,6,7,11], 8)
