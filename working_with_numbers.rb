def simple_calculator
  puts 'Simple Calculator'
  print '-' * 50
  puts
  puts 'Enter the first number'
  num1 = gets.chomp
  puts 'Enter the second number'
  num2 = gets.chomp
  puts "The first number plus the second number is #{num1.to_i + num2.to_i}"
  puts "The first number minus the second number is #{num1.to_i - num2.to_i}"
  puts "The first number multiplied by the second number is #{num1.to_i * num2.to_i}"
  puts "The first number divided by the second number is #{num1.to_f / num2.to_i}"
  puts "The remainder of the first number divided by the second number is #{num1.to_i % num2.to_i}"
end

simple_calculator
