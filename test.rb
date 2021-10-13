# frozen_string_literal: true

require 'minitest/autorun'
require './run'

# TDD for FizzBuzz
class FizzBuzzTest < Minitest::Test
  def printing_numbers
    num = 1
    array_num = []
    while num <= 100
      if divisible_by_3_and_5?(num)
        array_num.push('FizzBuzz')
      elsif divisible_by_5?(num)
        array_num.push('Buzz')
      elsif divisible_by_3?(num)
        array_num.push('Fizz')
      else
        array_num.push(num)
      end
      num += 1
    end
    array_num
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

  def test_check_nums
    assert_equal FizzBuzz.new.print_numbers, printing_numbers
  end
end
