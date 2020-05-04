# User.destroy_all
# City.destroy_all
# Gosip.destroy_all
# Gostag.destroy_all
# Tag.destroy_all
# PrivateMessage.destroy_all

require "faker"

10.times do |i|
  city = City.create(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
  tag = Tag.create(title: Faker::Superhero.descriptor)
  puts "create city #{i}"
end
puts "END OF CITIES"

10.times do |i|
  x = rand(1..5)
  x.times do
    puts "create user #{i}"
    user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::DcComics.title, email: Faker::Internet.email, age: rand(18..99), city_id: City.all.sample.id)
    n = rand(2..10)
    n.times do
      puts "create gossip and tag #{i}"
      gosip = Gosip.create!(title: Faker::DcComics.title, content: Faker::ChuckNorris.fact, user_id: user.id)
      gostag = Gostag.create(gosip_id: Gosip.all.sample.id, tag_id: Tag.all.sample.id)
    end
  end
end

100.times do |i|
  puts "create PM #{i}"
  pm = PrivateMessage.create(content: Faker::ChuckNorris.fact, sender_id: User.all.sample.id, recipient_id: User.all.sample.id)
end
