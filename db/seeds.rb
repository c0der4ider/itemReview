user = User.new
user.email = "admin@mail.com"
user.password = "123456"
user.save
user.add_role "admin"