
ravenclaw = House.create(name: "Ravenclaw")
hufflepuff = House.create(name: "Hufflepuff")
slytherin = House.create(name: "Slytherin")
gryffindor = House.create(name: "Gryffindor")



harry = gryffindor.students.create(first_name: "Harry", last_name: "Potter", grade: 7, gender: "male")
hermione = gryffindor.students.create(first_name: "Hermione", last_name: "Granger", grade: 7, gender: "female")
draco = slytherin.students.create(first_name: "Draco", last_name: "Malfoy", grade: 7, gender: "male")
goyle = slytherin.students.create(first_name: "Gregory", last_name: "Goyle", grade: 7, gender: "male")
cedric = hufflepuff.students.create(first_name: "Cedric", last_name: "Diggory", grade: 7, gender: "male")
susan = hufflepuff.students.create(first_name: "Susan", last_name: "Bones", grade: 3, gender: "female")
luna = ravenclaw.students.create(first_name: "Luna", last_name: "Lovegood", grade: 6, gender: "female")
cho = ravenclaw.students.create(first_name: "Cho", last_name: "Chang", grade: 6, gender: "female")

filch = Professor.create(first_name: "Argus", last_name: "Filch")
flitwick = Professor.create(first_name: "Filius", last_name: "Flitwick")
lockhart = Professor.create(first_name: "Gilderoy", last_name: "Lockhart")
mcgongall = Professor.create(first_name: "Minerva", last_name: "McGonagall")
pomfrey = Professor.create(first_name: "Poppy", last_name: "Pomfrey")
quirrell = Professor.create(first_name: "Quirinus", last_name: "Quirrell")
slughorn = Professor.create(first_name: "Horace", last_name: "Slughorn")
sprout = Professor.create(first_name: "Pomona", last_name: "Sprout")
trelawney = Professor.create(first_name: "Sybill", last_name: "Trelawney")

dada = Lecture.create(name: "Defence Against the Dark Arts", location: "West Wing")
trans = Lecture.create(name: "Transfiguration", location: "East Wing")
potions = Lecture.create(name: "Potions", location: "South Wing")
muggle = Lecture.create(name: "Muggle Studies", location: "North Wing")
creatures = Lecture.create(name: "Care of Magical Creatures", location: "South Wing")

creatures_one = creatures.sections.create(time: "Wednesday, 3 PM")
creatures_two = creatures.sections.create(time: "Thursday, 7 PM")
dada_one = dada.sections.create(time: "Friday, 11 AM")
dada_two = dada.sections.create(time: "Monday, 10 AM")
muggle_one = muggle.sections.create(time: "Monday, 3 PM")
muggle_two = muggle.sections.create(time: "Tuesday, 9 PM")
potions_one = potions.sections.create(time: "Tuesday, 4 PM")
potions_two = potions.sections.create(time: "Thursday, 1 PM")
trans_one = trans.sections.create(time: "Tuesday, 9 AM")
trans_two = trans.sections.create(time: "Friday, 8 AM")

harry.sections << dada_one
harry.sections << trans_two
harry.sections << muggle_one
hermione.sections << potions_one
hermione.sections << dada_two
hermione.sections << trans_one
draco.sections << dada_one
draco.sections << creatures_two
draco.sections << muggle_one
goyle.sections << dada_one
goyle.sections << trans_two
goyle.sections << muggle_two
cedric.sections << creatures_one
cedric.sections << trans_two
cedric.sections << muggle_one
luna.sections << dada_one
luna.sections << potions_two
luna.sections << muggle_two
susan.sections << potions_one
susan.sections << muggle_two
susan.sections << dada_one
cho.sections << dada_two
cho.sections << trans_one
cho.sections << muggle_two

filch.sections << muggle_one
flitwick.sections << muggle_two
lockhart.sections << dada_one
mcgongall.sections << dada_two
pomfrey.sections << trans_one
quirrell.sections << trans_two
slughorn.sections << potions_one
sprout.sections << potions_two
trelawney.sections << creatures_one
filch.sections << creatures_two

accio = Spell.create(name: "Accio")
expecto = Spell.create(name: "Expecto Patronum")
erecto = Spell.create(name: "Erecto")
expelliarmus = Spell.create(name: "Expelliarmus")
morsmordre = Spell.create(name: "Morsmordre")

filch1 = filch.professor_skills.create(level: 6)
filch2 = filch.professor_skills.create(level: 8)
flitwick1 = flitwick.professor_skills.create(level: 10)
lockhart1 = lockhart.professor_skills.create(level: 7)
mcgongall1 = mcgongall.professor_skills.create(level: 8)
pomfrey1 = pomfrey.professor_skills.create(level: 7)
quirrell1 = quirrell.professor_skills.create(level: 6)
slughorn1 = slughorn.professor_skills.create(level: 8)
sprout1 = sprout.professor_skills.create(level: 9)
trelawney1 = trelawney.professor_skills.create(level: 7)
flitwick2 = flitwick.professor_skills.create(level: 9)
lockhart2 = lockhart.professor_skills.create(level: 10)
mcgongall2 = mcgongall.professor_skills.create(level: 7)
pomfrey2 = pomfrey.professor_skills.create(level: 10)
quirrell2 = quirrell.professor_skills.create(level: 6)
slughorn2 = slughorn.professor_skills.create(level: 10)
sprout2 = sprout.professor_skills.create(level: 6)
trelawney2 = trelawney.professor_skills.create(level: 9)

accio.professor_skills << filch1
morsmordre.professor_skills << filch2
expecto.professor_skills << flitwick1
erecto.professor_skills << lockhart1
expelliarmus.professor_skills << mcgongall1
morsmordre.professor_skills << pomfrey1
accio.professor_skills << quirrell1
expecto.professor_skills << slughorn1
erecto.professor_skills << sprout1
expelliarmus.professor_skills << trelawney1
morsmordre.professor_skills << flitwick2
accio.professor_skills << lockhart2
expecto.professor_skills << mcgongall2
erecto.professor_skills << pomfrey2
expelliarmus.professor_skills << quirrell2
morsmordre.professor_skills << slughorn2
expecto.professor_skills << sprout2
accio.professor_skills << trelawney2

harry1 = harry.student_skills.create(level: 3)
hermione1 = hermione.student_skills.create(level: 1)
goyle1 = goyle.student_skills.create(level: 1)
cedric1 = cedric.student_skills.create(level: 2)
susan1 = susan.student_skills.create(level: 4)
luna1 = luna.student_skills.create(level: 3)
cho1 = cho.student_skills.create(level: 2)
harry2 = harry.student_skills.create(level: 5)
hermione2 = hermione.student_skills.create(level: 4)
goyle2 = goyle.student_skills.create(level: 3)
cedric2 = cedric.student_skills.create(level: 5)
susan2 = susan.student_skills.create(level: 1)
luna2 = luna.student_skills.create(level: 3)
cho2 = cho.student_skills.create(level: 1)

morsmordre.student_skills << harry1
expecto.student_skills << hermione1
erecto.student_skills << goyle1
expelliarmus.student_skills << cedric1
morsmordre.student_skills << susan1
accio.student_skills << luna1
expecto.student_skills << cho1
erecto.student_skills << harry2
expelliarmus.student_skills << hermione2
morsmordre.student_skills << goyle2
accio.student_skills << cedric2
expecto.student_skills << susan2
erecto.student_skills << luna2
expelliarmus.student_skills << cho2