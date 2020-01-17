# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

User.destroy_all
Photo.destroy_all
newUser = User.create({ username: 'sendhelp' ,  password: 'lifealert' })
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/wat.jpg')
newUser.pfp.attach(io: file, filename: 'wat.jpg')
# newUser.pfp.attach( io: File.open('/Users/meenya/Documents/wat.jpg'), filename: 'wat.jpg')

user2 = User.create({ username: 'Hitswi', password: 'Trista12412400'})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/fu.jpg')
user2.pfp.attach(io: file, filename: 'fu.jpg')
# user2.pfp.attach( io: File.open('/Users/meenya/Documents/fu.jpg'), filename: 'fu.jpg')


photo1 = Photo.create({user_id: newUser.id, title: 'Gunslinger', description: "It's high noon :^)"})
file1 = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img11.jpg')
photo1.image.attach( io: file, filename: 'img11.jpg')

photo2 = Photo.create({user_id: newUser.id, title: 'Inverted Spire', description: "Pointy boi"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/wallhaven-nr8y7q.jpg')
photo2.image.attach(io: file, filename: 'wallhaven-nr8y7q.jpg')
# photo2.image.attach( io: File.open('/Users/meenya/Documents/wallhaven-nr8y7q.jpg'), filename: 'wallhaven-nr8y7q.jpg')

photo3 = Photo.create({user_id: user2.id, title: 'Smoke', description: "We get it you vape"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img04.jpg')
photo3.attach(io: file, filename: 'img04.jpg')
# photo3.image.attach( io: File.open('/Users/meenya/Documents/img04.jpg'), filename: 'img04.jpg')

photo4 = Photo.create({user_id: user2.id, title: 'Oni', description: "( ˘ ³˘)♥"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img06.jpg')
photo4.image.attach(io: file, filename: 'img06.jpg')
# photo4.image.attach( io: File.open('/Users/meenya/Documents/img06.jpg'), filename: 'img06.jpg')

photo5 = Photo.create({user_id: newUser.id, title: 'bb 8', description: "Rolly boi"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image19.png')
photo5.image.attach(io: file, filename: 'image19.png')
# photo5.image.attach( io: File.open('/Users/meenya/Documents/image19.png'), filename: 'image19.png')

photo6 = Photo.create({user_id: newUser.id, title: 'Cayde-6', description: "'Im coming home Ace'（πーπ）"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img12.jpg')
photo6.image.attach(io: file, filename: 'img12.jpg')
# photo6.image.attach( io: File.open('/Users/meenya/Documents/img12.jpg'), filename: 'img12.jpg')

photo7 = Photo.create({user_id: user2.id, title: 'Nergigante', description: "Prickly boi"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image14.jpg')
photo7.image.attach(io: file, filename: 'image14.jpg')
# photo7.image.attach( io: File.open('/Users/meenya/Documents/image14.jpg'), filename: 'image14.jpg')

photo8 = Photo.create({user_id: newUser.id, title: 'Country Road', description: "TAKE ME HOMEEEEEEEE"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image15.jpg')
photo8.image.attach(io: file, filename: 'image15.jpg')
# photo8.image.attach( io: File.open('/Users/meenya/Documents/image15.jpg'), filename: 'image15.jpg')

photo9 = Photo.create({user_id: newUser.id, title: 'Cyberpunk', description: "Neato"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image18.jpg')
photo9.image.attach(io: file, filename: 'image18.jpg')
# photo9.image.attach( io: File.open('/Users/meenya/Documents/image18.jpg'), filename: 'image18.jpg')

photo10 = Photo.create({user_id: user2.id, title: 'True Damage', description: "Lucian doesn't have a true damage skin tho"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image16.jpg')
photo10.image.attach(io: file, filename: 'image16.jpg')
# photo10.image.attach( io: File.open('/Users/meenya/Documents/image16.jpg'), filename: 'image16.jpg')

photo11 = Photo.create({user_id: newUser.id, title: 'Balls', description: "Don't slip"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img08.jpg')
photo11.image.attach(io: file, filename: 'img08.jpg')
# photo11.image.attach( io: File.open('/Users/meenya/Documents/img08.jpg'), filename: 'img08.jpg')

photo12 = Photo.create({user_id: user2.id, title: 'Cave?', description: "Looks cool?"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/img09.png')
photo12.image.attach(io: file, filename: 'img09.png')
# photo12.image.attach( io: File.open('/Users/meenya/Documents/img09.png'), filename: 'img09.png')

photo13 = Photo.create({user_id: user2.id, title: 'Stardew', description: "Best game"})
file = open('https://stuttr-dev.s3-us-west-1.amazonaws.com/image17.jpg')
photo13.image.attach(io: file, filename: 'image17.jpg')
# photo13.image.attach( io: File.open('/Users/meenya/Documents/image17.jpg'), filename: 'image17.jpg')


