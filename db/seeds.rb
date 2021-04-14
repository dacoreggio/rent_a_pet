# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
addresses = [
            "Rudi-Dutschke-Straße 26, 10969 Berlin, Germany",
            "Tauentzienstraße 21-24, 10789 Berlin, GermanyTauentzienstraße 21-24, 10789 Berlin, Germany",
            "Alexanderplatz, 10178 Berlin, Germany",
            "Schumannstraße 13A, 10117 Berlin, Germany",
            "Mercedes-Platz 1, 10243 Berlin, Germany",
            "Str. des 17. Juni, 10785 Berlin, Germany",
            "Platz der Luftbrücke 5, 12101 Berlin, Germany",
            "Klosterstraße 62, 10179 Berlin, Germany",
            "Schönhauser Allee 180, 10119 Berlin, Germany",
            "Saarbrücker Str. 37a, 10405 Berlin, Germany",
            "Turmstraße 25, 10559 Berlin, Germany"
]

puts "Cleaning database..."
Pet.destroy_all
User.destroy_all

puts "Creating users..."
User.create(email: 'federico@test.com', password: '123456', first_name: 'Federico', last_name: 'Valenza')
User.create(email: 'christina@test.com', password: '123456', first_name: 'Christina', last_name: 'Koufopoulou')
User.create(email: 'ilaria@test.com', password: '123456', first_name: 'Ilaria', last_name: 'Valenza')
User.create(email: 'john@test.com', password: '123456', first_name: 'John', last_name: 'McEnroe')
User.create(email: 'maria@test.com', password: '123456', first_name: 'Maria', last_name: 'Marowski')


puts "Creating pets..."
cat1 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Cat',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[0],
    user_id: User.all.sample.id,
)
cat1.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat1.jpg')), filename: 'cat1.jpg', content_type: 'image/jpg')

cat2 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Cat',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[1],
    user_id: User.all.sample.id,
)
cat2.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat2.jpg')), filename: 'cat2.jpg', content_type: 'image/jpg')

cat3 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Cat',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[2],
    user_id: User.all.sample.id,
)
cat3.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat3.jpg')
    ), filename: 'cat3.jpg', content_type: 'image/jpg')

cat4 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Cat',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[3],
    user_id: User.all.sample.id,
)
cat4.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/cat4.jpg')), filename: 'cat4.jpg', content_type: 'image/jpg')

dog = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Dog',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[4],
    user_id: User.all.sample.id,
)
dog.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog.jpg')), filename: 'dog.jpg', content_type: 'image/jpg')

dog1 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Dog',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[5],
    user_id: User.all.sample.id,
)
dog1.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog1.jpg')), filename: 'dog1.jpg', content_type: 'image/jpg')

dog3 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Dog',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[6],
    user_id: User.all.sample.id,
)
dog3.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog3.jpg')), filename: 'dog3.jpg', content_type: 'image/jpg')

dog4 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Dog',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[7],
    user_id: User.all.sample.id,
)
dog4.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/dog4.jpg')), filename: 'dog4.jpg', content_type: 'image/jpg')

snake = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Snake',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[8],
    user_id: User.all.sample.id,
)
snake.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/snake.jpg')), filename: 'snake.jpg', content_type: 'image/jpg')

hamster1 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Hamster',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[9],
    user_id: User.all.sample.id,
)
hamster1.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/hamster1.jpg')), filename: 'hamster1.jpg', content_type: 'image/jpg')

hamster2 = Pet.create!(
    name: Faker::Name.first_name,
    species: 'Hamster',
    available: true,
    age: rand(1..15),
    description: Faker::Lorem.sentence(word_count: 10),
    price_per_day: rand(5..50),
    location: addresses[10],
    user_id: User.all.sample.id,
)
hamster2.photo.attach(io: File.open(File.join(Rails.root, '/app/assets/images/hamster2.jpg')), filename: 'hamster2.jpg', content_type: 'image/jpg')

puts "Finished!"
