# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
    city = City.create!(name: Faker::Address.city)
end


20.times do
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::SiliconValley.quote,
    email: Faker::SiliconValley.email, age: rand(0..80), city_id: rand(1..15))
end


40.times do
    tag = Tag.create!(title: Faker::LeagueOfLegends.summoner_spell)
end


30.times do
    gossip = Gossip.create!(title: Faker::LeagueOfLegends.champion, content: Faker::LeagueOfLegends.quote,
    user_id: rand(1..20))
end


10.times do
    tagpergossip = TagPerGossip.create!(tag_id: rand(1..40), gossip_id: rand(1..30))
end


20.times do
    private_message = PrivateMessage.create!(sender: User.all.sample, 
    recipient: User.all.sample, content: Faker::Lebowski.quote)
end


