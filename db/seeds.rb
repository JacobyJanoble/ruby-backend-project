puts "🌱 Seeding Character..."

50.times do
    character = Character.create(
        character: Faker::Games::StreetFighter.character,
        stage: Faker::Games::StreetFighter.stage,
        quote: Faker::Games::StreetFighter.quote,
        move: Faker::Games::StreetFighter.move
    )

    rand(1..7).times do
        Review.create(
            rating: rand(1..10),
            text: Faker::Lorem.sentence,
            character_id: character.id
        )
    end
end


puts "✅ Done seeding!"
