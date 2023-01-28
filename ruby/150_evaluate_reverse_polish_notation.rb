# frozen_string_literal: true

def eval_rpn(tokens)
  stack = []
  tokens.each do |value|
    if value == '+'
      stack.push(stack.pop + stack.pop)
    elsif value == '*'
      stack.push(stack.pop * stack.pop)
    elsif value == '/'
      a = stack.pop
      b = stack.pop
      stack.push((b.to_f / a).to_i)
    elsif value == '-'
      a = stack.pop
      b = stack.pop
      stack.push(b - a)
    else
      stack.push(value.to_i)
    end
  end
  stack.pop
end

# p eval_rpn(['2', '1', '+', '3', '*'])
# p eval_rpn(['4', '13', '5', '/', '+'])
p eval_rpn(['10', '6', '9', '3', '+', '-11', '*', '/', '*', '17', '+', '5', '+'])
