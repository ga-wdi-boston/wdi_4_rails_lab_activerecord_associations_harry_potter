# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

House.create(name: "Ravenclaw", colors: "blue, bronze")
House.create(name: "Hufflepuff", colors: "yellow, black")
House.create(name: "Slytherin", colors: "green, silver")
House.create(name: "Griffindor", colors: "red, gold")

Student.create(name: "Harry Potter", house_id: 4)
Student.create(name: "Draco Malfoy", house_id: 3)
Student.create(name: "Hermione Granger", house_id: 4)
Student.create(name: "Luna Lovegood", house_id: 1)
Student.create(name: "Robert Pattinson", house_id: 2)