# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
include Faker

Phoenix.delete_all
images=["1081.jpg","1082.jpg","1083.jpg","1084.jpeg","1085.jpg","1086.jpg","1087.jpg","1089.jpeg"]
60.times do
  a= Phoenix.create(:fact => Company.name,
                :content => Lorem.paragraph(rand(4..10)),
                :made_by => Name.name,
                :last_seen => Time.now,
                :image => images[rand(0..images.length)],
                :no_views => rand(1..50)
  )
  puts a.inspect
end

