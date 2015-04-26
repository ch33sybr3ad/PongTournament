require 'faker'

4.times do
  Player.create(name: Faker::Name.name)
end
