# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Photo.destroy_all
newUser = User.create({ username: 'sendhelp' ,  password: 'lifealert' })
photo1 = Photo.create({user_id: newUser.id, title: 'test1', description: "test if AWS is working properly"})

photo1.image.attach( io: File.open('/Users/meenya/Documents/wallhaven-p2zx13.jpg'), filename: 'wallhaven-p2zx13.jpg')
