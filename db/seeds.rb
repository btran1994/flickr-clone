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
# newUser.pfp.attach( io: File.open('/Users/meenya/Documents/wat.jpg'), filename: 'wat.jpg')

user2 = User.create({ username: 'Hitswi', password: 'Trista12412400'})
# user2.pfp.attach( io: File.open('/Users/meenya/Documents/fu.jpg'), filename: 'fu.jpg')


photo1 = Photo.create({user_id: newUser.id, title: 'Gunslinger', description: "It's high noon :^)"})
photo1.image.attach( io: File.open('/Users/meenya/Documents/wallhaven-p2zx13.jpg'), filename: 'wallhaven-p2zx13.jpg')

photo2 = Photo.create({user_id: newUser.id, title: 'Inverted Spire', description: "Pointy boi"})
photo2.image.attach( io: File.open('/Users/meenya/Documents/wallhaven-nr8y7q.jpg'), filename: 'wallhaven-nr8y7q.jpg')

photo3 = Photo.create({user_id: user2.id, title: 'Smoke', description: "We get it you vape"})
photo3.image.attach( io: File.open('/Users/meenya/Documents/img04.jpg'), filename: 'img04.jpg')

photo4 = Photo.create({user_id: user2.id, title: 'Oni', description: "( ˘ ³˘)♥"})
photo4.image.attach( io: File.open('/Users/meenya/Documents/img06.jpg'), filename: 'img06.jpg')

photo5 = Photo.create({user_id: newUser.id, title: 'bb 8', description: "Rolly boi"})
photo5.image.attach( io: File.open('/Users/meenya/Documents/image19.png'), filename: 'image19.png')

photo6 = Photo.create({user_id: newUser.id, title: 'Cayde-6', description: "'Im coming home Ace'（πーπ）"})
photo6.image.attach( io: File.open('/Users/meenya/Documents/img12.jpg'), filename: 'img12.jpg')

photo7 = Photo.create({user_id: user2.id, title: 'Nergigante', description: "Prickly boi"})
photo7.image.attach( io: File.open('/Users/meenya/Documents/image14.jpg'), filename: 'image14.jpg')

photo8 = Photo.create({user_id: newUser.id, title: 'Country Road', description: "TAKE ME HOMEEEEEEEE"})
photo8.image.attach( io: File.open('/Users/meenya/Documents/image15.jpg'), filename: 'image15.jpg')

photo9 = Photo.create({user_id: newUser.id, title: 'Cyberpunk', description: "Neato"})
photo9.image.attach( io: File.open('/Users/meenya/Documents/image18.jpg'), filename: 'image18.jpg')

photo10 = Photo.create({user_id: user2.id, title: 'True Damage', description: "Lucian doesn't have a true damage skin tho"})
photo10.image.attach( io: File.open('/Users/meenya/Documents/image16.jpg'), filename: 'image16.jpg')

photo11 = Photo.create({user_id: newUser.id, title: 'Balls', description: "Don't slip"})
photo11.image.attach( io: File.open('/Users/meenya/Documents/img08.jpg'), filename: 'img08.jpg')

photo12 = Photo.create({user_id: newUser.id, title: 'Cave?', description: "Looks cool?"})
photo12.image.attach( io: File.open('/Users/meenya/Documents/img09.png'), filename: 'img09.png')

photo13 = Photo.create({user_id: user2.id, title: 'Stardew', description: "Best game"})
photo13.image.attach( io: File.open('/Users/meenya/Documents/image17.jpg'), filename: 'image17.jpg')


