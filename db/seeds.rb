# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: 'Amonsta', email: 'amonsta@email.com', password: 'password')
User.create(username: 'Stevie-Jo', email: 'Stevie-Jo@email.com', password: 'password')
User.create(username: 'Dani', email: 'Dani@email.com', password: '12345')


Review.create(title: 'I dont even need to review this', song_or_album_name: 'Purple Rain', artist_name: 'Prince', content: "The best guitar solo ever hands down! Dont argue this.", user_id:1)
Review.create(title: 'Eh, its okay', song_or_album_name: '1999', artist_name: 'Prince', content: 'Kind of corny.', user_id: 2)
Review.create(title: 'All day!', song_or_album_name: 'Redbone', artist_name: 'Childish Gambino', content: 'He is talented beyond words! I wish more people recognized this before 2019.', user_id: 1)
Review.create(title: 'I can dig it', song_or_album_name: 'Hybrid Theory', artist_name: 'Linkin Park', content: 'Um.. can we say this is on the all time best albums ever made list??', user_id: 3)
Review.create(title: 'Classic?', song_or_album_name: 'September', artist_name: 'Earth Wind & Fire', content: 'They need a new sound', user_id: 2)


