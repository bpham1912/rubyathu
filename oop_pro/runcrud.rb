require_relative 'crud' #truyền vào hàm xử lý
users = [
          { username: "mashrur", password: "password1" },
          { username: "binh", password: "123" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
hashed_users = Crud.create_secure_users(users)
puts hashed_users
