module Crud
  require "bcrypt"
  puts "module crud activite"
 # dùng từ self để thay thế iệc gọi từ module
 # khởi tạo phương thức mã hoá password của người dùng sang mã MD5
  def create_hash_digest(password)
    BCrypt::Password.create(password)
  end
  # khởi tạo phương thức xác thực mật khẩu của người dùng
  def verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
  def create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
    end
    list_of_users
  end
  #new_users =  create_secure_users(users)
  #puts new_users
  #new_password = create_hash_digest("password1")
  #puts new_password == "password2"
  def authenticate_user(username, password, list_of_users)
     list_of_users.each do |user_record|
       if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
         return user_record
       end
     end
     "Credentials were not correct"
   end

end
