student1 = Student.create(name: 'Tom', house: 'house 1')
student2 = Student.create(name: 'Bill', house: 'house 1')
student3 = Student.create(name: 'Joe', house: 'house 2')
student4 = Student.create(name: 'Mary', house: 'house 3')

botany1 = Lecture.create(name: 'botany', dayofweek: 'Monday')

botany2 = Lecture.create(name: 'botany', dayofweek: 'Wednesday')

student1.lectures << botany1
student2.lectures << botany1
student3.lectures << botany2
student4.lectures << botany2