student1 = Student.create(name: 'Tom', house: 'house 1')
student2 = Student.create(name: 'Bill', house: 'house 1')
student3 = Student.create(name: 'Joe', house: 'house 2')
student4 = Student.create(name: 'Mary', house: 'house 3')

botany = Lecture.create(name: 'Botany', dayofweek: 'Monday')

harrypotterbs = Lecture.create(name: 'Harry Potter Bullshit', dayofweek: 'Wednesday')

student1.lectures << botany
student1.lectures << harrypotterbs
student2.lectures << botany
student3.lectures << botany
student4.lectures << botany
student4.lectures << harrypotterbs

professor1 = Professor.create(name: "Smith")
professor2 = Professor.create(name: "Brown")

professor1.lectures << botany
professor2.lectures << harrypotterbs

professor1.save
professor2.save

necromancy = Spell.create(name: 'necromancy')
levitation = Spell.create(name: 'levitation')

student1.spells << necromancy

professor1.spells << necromancy

student2.spells << levitation

professor2.spells << levitation