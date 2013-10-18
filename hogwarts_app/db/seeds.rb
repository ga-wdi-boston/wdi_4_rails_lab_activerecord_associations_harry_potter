%w(Gryffindor Hufflepuff Ravenclaw Slytherin).each do |h|
  house = House.create(name: h)
  5.times do
    student = Student.create(name: Faker::Name.name)
    student.save!
    %w(Accio Anapneo Avis Crucio).each do |s|
      spell = Spell.create(name: s)
      student.spells << spell
    end
  end
end

3.times { Professor.create(name: Faker::Name.name) }
