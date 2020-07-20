require 'faker'

50.times do
  Restaurant.create!(
    name: Faker::Cannabis.buzzword.titleize,
    city: "#{Faker::Space.star}, #{Faker::Space.star_cluster}, #{Faker::Space.constellation}"
  )
end
