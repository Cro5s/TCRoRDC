# String concatenation
first_name = 'Kadeem'
last_name = 'Jackson'
puts first_name + " " + last_name

# String interpolation
puts "My first name is #{first_name} and my last name is #{last_name}"

# Methods, how to find them
full_name = first_name + ' ' + last_name
puts full_name.class

# Common methods
full_name.length

# Variable assignment
new_last_name = last_name
puts new_last_name
last_name = 'Lee'
puts last_name
puts new_last_name

# Escaping
p 'Kadeem asked \'Hey John, how are you doing?\''
