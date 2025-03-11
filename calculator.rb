# frozen_string_literal: true

# A simple calculator class to go over basic Ruby fundamentals
class Calculator
  attr_reader :num1, :num2

  def initialize
    puts 'Simple Calculator'
    print '-' * 50
    puts

    @num1 = integer_input
    @num2 = integer_input
    operator_input
  end

  def self.add(num1, num2)
    puts "#{num1} plus #{num2} is #{num1.to_i + num2.to_i}"
  end

  def self.subtract(num1, num2)
    puts "#{num1} minus #{num2} is #{num1.to_i - num2.to_i}"
  end

  def self.divide(num1, num2)
    puts "#{num1} divided by #{num2} is #{num1.to_f / num2.to_i}"
  end

  def self.multiply(num1, num2)
    puts "#{num1} multiplied by #{num2} is #{num1.to_i * num2.to_i}"
  end

  def self.remainder(num1, num2)
    puts "The remainder of #{num1} divided by #{num2} is #{num1.to_i % num2.to_i}"
  end

  private

  def integer_input
    loop do
      puts 'Enter a number'
      num = gets.chomp

      return num.to_i if valid_integer?(num)

      puts 'Please enter a valid integer'
    end
  end

  def operator_input
    loop do
      puts 'What kind of operation you would like to do?'
      puts 'Enter 1 for Addition, 2 for Subtraction, 3 for Multiplication, 4 for Division, or 5 to get a Remainder'
      operator = gets.chomp.to_i

      case operator
      when 1
        Calculator.add(num1, num2)
        break
      when 2
        Calculator.subtract(num1, num2)
        break
      when 3
        Calculator.multiply(num1, num2)
        break
      when 4
        Calculator.divide(num1, num2)
        break
      when 5
        Calculator.remainder(num1, num2)
        break
      else
        puts 'Invalid input'
      end
    end
  end

  def valid_integer?(num)
    Integer(num)
    true
  rescue ArgumentError
    false
  end
end

Calculator.new
