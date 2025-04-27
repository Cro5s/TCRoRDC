class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def full_name
    p "Full name is #{first_name} #{last_name}"
  end

  def f_name
    p first_name
  end

  def l_name
    p last_name
  end

  def print_email
    p email
  end

  def print_username
    p username
  end
end

cross = Student.new('Cross', 'Lee', 'cross@email.com', 'Cross', 'password123')

p cross
cross.f_name
cross.l_name
cross.full_name
cross.print_email

john = Student.new('John', 'Doe', 'john_doe@email.com', 'JDoe', 'password123')

p john
john.f_name
john.l_name
john.full_name
