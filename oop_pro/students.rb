require_relative 'crud'
class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password
  def initialize(firstname, lastname, username, email, password)
    @first_name = firstname
    @last_name = lastname
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First name: #{@first_name},
    Last name: #{@last_name},
    Email: #{@email},
    UserName: #{@username},
    Password: #{@password}"
  end
end

thanhbinh =Student.new("BInh","Thanh","thanhbinh1912","bpham3442@gmail.com","pass123")
binh =Student.new("Binh1","Thanh1","thanhbinh2009","bpham3443@gmail.com","123pass")
hashed_password = thanhbinh.create_hash_digest(thanhbinh.password)
puts hashed_password
