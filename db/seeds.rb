Student.destroy_all
Classroom.destroy_all
Subject.destroy_all

data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
core_classes_hash = data['subjects']['core_classes']
electives_hash = data['subjects']['electives']
# core_classes_array = data['subjects']['core_classes']
# electives_array = data['subjects']['electives']
students_array = data['students']
professors_array = data['professors']


71.times do |i|
    Student.create(name: Faker::Name.name, grade: rand(9..12))
end

students_array.reverse.each do |student|
    Student.create(name: student.titleize, grade: rand(9..12))
end


professors_array.each do |prof|
    Classroom.create(professor: prof.titleize, name: "a#{rand(100..234)}")
end

core_classes_hash.each do |course, desc|
    Subject.create(name: course.titleize, description: desc, student_id: Student.all.sample.id, classroom_id: Classroom.all.sample.id)
end