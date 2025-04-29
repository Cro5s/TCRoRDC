require 'bcrypt'

class Student
  include BCrypt

  attr_accessor :first_name, :last_name, :email, :username
  attr_reader :password_digest

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password_digest = create_password_digest(password)
  end

  def info
    p "Full name: #{first_name} #{last_name}, Email: #{email}, Username: #{username}"
  end

  def full_name
    p "Full name is #{first_name} #{last_name}"
  end

  def valid_password?(password)
    p Password.new(password_digest) == password
  end

  def create_password_digest(password)
    Password.create(password)
  end
end

cross = Student.new('Cross', 'Lee', 'cross@email.com', 'Cross', 'password123')
cross.info
cross.full_name
cross.valid_password?('password123')
cross.valid_password?('password')

john = Student.new('John', 'Doe', 'john_doe@email.com', 'JDoe', 'password123')
john.info
