# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# House.create(name: "Ravenclaw", colors: "blue, bronze", slogan: "Wit beyond measure is man's greatest treasure")

# House.create(name: "Hufflepuff", colors: "yellow, black", slogan: "Those patient Hufflepuffs are true and unafraid of toil")

# House.create(name: "Slytherin", colors: "green, silver", slogan: "Slytherin will help you on your way to greatness")

# House.create(name: "Griffindor", colors: "red, gold", slogan: "Their daring, nerve and chivalry set Gryffindors apart")

Student.create(name: "Harry Potter", house_id: 4)
Student.create(name: "Luna Lovegood", house_id: 1)
Student.create(name: "Robert Pattenson", house_id: 2)

Lecture.create(name: "Potions")
Lecture.create(name: "Defense of the Dark Arts")
Lecture.create(name: "Lecture on Transformations")

Teacher.create(name: "Arseface Quarrell")
Teacher.create(name: "Defense of the Dark Arts")
Teacher.create(name: "Lecture on Transformations")