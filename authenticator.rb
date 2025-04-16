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
    p 'Enter your username: '
    current_user = gets.chomp
    p 'Enter your password: '
    current_password = gets.chomp

    users.each do |user|
      next unless user[:username] == current_user && user[:password] == current_password

      p 'User Authenticated!'
      p user
      return user
    end

    p 'Credentials were not correct'
    p 'Press q to quit or any other key to continue: '
    entry = gets.chomp

    entry == 'q' ? break : tries += 1
  end

  p 'You have exceeded the number of attempts'
end

authenticator
