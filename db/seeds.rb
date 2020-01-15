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

photo2 = Photo.create({user_id: newUser.id, title: 'test2', description: "test if AWS is working properly"})
photo2.image.attach( io: File.open('/Users/meenya/Documents/wallhaven-nr8y7q.jpg'), filename: 'wallhaven-nr8y7q.jpg')

photo3 = Photo.create({user_id: newUser.id, title: 'test3', description: "test if AWS is working properly"})
photo3.image.attach( io: File.open('/Users/meenya/Documents/img04.jpg'), filename: 'img04.jpg')

photo4 = Photo.create({user_id: newUser.id, title: 'test4', description: "test if AWS is working properly"})
photo4.image.attach( io: File.open('/Users/meenya/Documents/img06.jpg'), filename: 'img06.jpg')

photo5 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo5.image.attach( io: File.open('/Users/meenya/Documents/image19.png'), filename: 'image19.png')

photo6 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo6.image.attach( io: File.open('/Users/meenya/Documents/img12.jpg'), filename: 'img12.jpg')

photo7 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo7.image.attach( io: File.open('/Users/meenya/Documents/image14.jpg'), filename: 'image14.jpg')

photo8 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo8.image.attach( io: File.open('/Users/meenya/Documents/image15.jpg'), filename: 'image15.jpg')

photo9 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo9.image.attach( io: File.open('/Users/meenya/Documents/image18.jpg'), filename: 'image18.jpg')

photo10 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo10.image.attach( io: File.open('/Users/meenya/Documents/image16.jpg'), filename: 'image16.jpg')

photo11 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo11.image.attach( io: File.open('/Users/meenya/Documents/img08.jpg'), filename: 'img08.jpg')

photo12 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo12.image.attach( io: File.open('/Users/meenya/Documents/img09.png'), filename: 'img09.png')

photo13 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo13.image.attach( io: File.open('/Users/meenya/Documents/image17.jpg'), filename: 'image17.jpg')

photo14 = Photo.create({user_id: newUser.id, title: 'test5', description: "test if AWS is working properly"})
photo14.image.attach( io: File.open('/Users/meenya/Documents/img06.jpg'), filename: 'img06.jpg')


