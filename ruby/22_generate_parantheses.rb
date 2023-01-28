# frozen_string_literal: true

def generate_parenthesis(n)
  return ['()'] if n == 1

  paranthesis = []

  recursive(n, '', paranthesis, 0, 0)
  paranthesis
end

def recursive(n, current, paranthesis, n_of_open, n_of_closed)
  if n_of_open == n_of_closed && n_of_closed == n
    paranthesis << current
  else
    if n_of_open < n
      recursive(n, "#{current}(", paranthesis, n_of_open + 1, n_of_closed)
    end

    if n_of_closed < n_of_open
      recursive(n, "#{current})", paranthesis, n_of_open, n_of_closed + 1)
    end
  end
end

p generate_parenthesis(3)
p generate_parenthesis(1)
