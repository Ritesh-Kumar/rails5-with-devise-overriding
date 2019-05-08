# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Creating list of roles
ROLE_LIST = ['admin', 'user']

ROLE_LIST.each do |role|
  Role.create(name: role)
end

#Creating admin user
u = User.new(email: 'admin@gmail.com', password: 'abc@123', first_name: 'admin', last_name: 'admin')
u.save
u.role = Role.find_by_name('admin')
puts "Created admin user"
u.save
