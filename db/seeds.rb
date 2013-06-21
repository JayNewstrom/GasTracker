# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Grade.count == 0
  Grade.create(name: 'Regular')
  Grade.create(name: 'Mid')
  Grade.create(name: 'Premium')
  Grade.create(name: 'Diesel')
end