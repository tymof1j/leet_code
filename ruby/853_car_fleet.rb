# frozen_string_literal: true

def car_fleet(target, position, speed)
  return 1 if position.length == 1

  cars = position.zip(speed).sort_by(&:first)

  stack = []
  cars.each do |car|
    position, speed = car
    time = (target - position) / speed.to_f
    stack.pop while !stack.empty? && stack[-1] <= time
    stack << time
  end

  stack.length
end
p car_fleet(12, [10, 8, 0, 5, 3], [2, 4, 1, 1, 3])
