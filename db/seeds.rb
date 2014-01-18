# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include Faker

10.times do
  a= Phoenix.create(:fact => Company.name,
                :content => Lorem.paragraph(rand(1..4)),
                :made_by => Name.name,
                :last_seen => Time.now,
                :image => "phoenix.jpg",
                :no_views => rand(1..50)
  )
  puts a.inspect
end

