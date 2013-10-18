# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
4.times do |i|
  house = House.create(name: Faker::Name.name)
  5.times do |j|
    student = Student.create(name: Faker::Name.name)
    student.house = house
    student.save!
    %w(Accio Anapneo Avis Crucio).each do |spell|
      spell1 = Spell.create(name: spell)
      student.spells << spell1
    end
  end
end

3.times do |i|
  professor = Professor.create(name: Faker::Name.name)
end