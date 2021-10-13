# frozen_string_literal: true

# FizzBuzz Printer
class FizzBuzz
  def print_numbers
    number = 1
    array_of_numbers = []
    while number <= 100
      if divisible_by_3_and_5?(number)
        array_of_numbers.push('FizzBuzz')
      elsif divisible_by_5?(number)
        array_of_numbers.push('Buzz')
      elsif divisible_by_3?(number)
        array_of_numbers.push('Fizz')
      else
        array_of_numbers.push(number)
      end
      number += 1
    end
    array_of_numbers
  end

  def divisible_by_3?(number)
    true if (number % 3).zero?
  end

  def divisible_by_5?(number)
    true if (number % 5).zero?
  end

  def divisible_by_3_and_5?(number)
    true if (number % 5).zero? && (number % 3).zero?
  end
end

FizzBuzz.new.print_numbers
