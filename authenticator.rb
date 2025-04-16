def authenticator
  users = [
    { username: 'cross', password: 'password1' },
    { username: 'kadeem', password: 'password2' },
    { username: 'sarah', password: 'password3' },
    { username: 'denise', password: 'password4' },
    { username: 'justin', password: 'password5' }
  ]
  tries = 0

  p 'Welcome to the authenticator'
  100.times { print '-' }
  puts
  p 'This program will take input from the user and compare password'
  p 'If password is correct, you will get back the user object'

  while tries < 4
    print 'Enter your username: '
    current_user = gets.chomp.downcase
    print 'Enter your password: '
    current_password = gets.chomp.downcase

    value = auth_user(current_user, current_password, users)

    return value unless value.instance_of?(String)

    p value
    print 'Press q to quit or any other key to continue: '
    entry = gets.chomp.downcase
    puts

    entry == 'q' ? return : tries += 1
  end

  p 'You have exceeded the number of attempts'
end

def auth_user(username, password, list_of_users)
  list_of_users.each do |user|
    next unless user[:username] == username && user[:password] == password

    p 'User Authenticated!'
    p user
    return user
  end

  'Credentials were not correct'
end

authenticator
