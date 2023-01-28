# frozen_string_literal: true

def search_matrix(matrix, target)
  left = 0
  row = matrix.first.length
  right = matrix.length * row - 1
  while left <= right
    center = (right + left) / 2
    if matrix[center / row][center % row] > target
      right = center - 1
    elsif matrix[center / row][center % row] < target
      left = center + 1
    elsif matrix[center / row][center % row] == target
      return true
    end
  end
  false
end

p search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 300)
p search_matrix([[1, 3, 5, 7], [10, 11, 16, 20], [23, 30, 34, 60]], 3)
