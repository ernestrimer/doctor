# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do
  doc = Doc.create(
    dr_name: Faker::Creature::Animal.name,
    dr_num: Faker::Science.element
  )
 
  2.times do 
    user = User.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      patient_num: Faker::Superhero.name
    )

    Appt.create(
      date: Faker::Date.between(from:Date.today, to: 30.days.from_now),
      time: Faker::Time.between(from:Time.now - 23, to: Time.now),
      doc_id: doc.id,
      user_id: user.id
    )
  end
end

puts "Data Seeded."