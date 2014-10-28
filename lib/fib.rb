def fib(number)
  if number < 1 || number % 1 != 0
    'Invalid Number. Input a sequence of at least 1.'
  else
    left_value = 0
    right_value = 1
    result = 0
    number.times do
      result = left_value + right_value
      left_value = right_value
      right_value = result
    end
    result
  end
end
