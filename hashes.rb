def hashes
  my_details = { 'name' => 'Cross', 'favcolor' => 'red' }
  my_details['favcolor']
end

def symbol_hash
  my_details = { a: 1, b: 2, c: 3, d: 4 }
  my_details[:a]

  # Add a key value pair
  my_details[:name] = 'Cross'
  my_details.delete(:d)
  my_details
end

p hashes
p symbol_hash
