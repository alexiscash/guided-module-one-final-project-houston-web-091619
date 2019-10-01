Student.destroy_all
Classroom.destroy_all
Subject.destroy_all

data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
core_classes_array = data['subjects']['core_classes']
electives_array = data['subjects']['electives']
students_array = data['students']
professors_array = data['professors']

students_array.each do |student|
    Student.create(name: student, grade: 4)
end

professors_array.each do |prof|
    Classroom.create(professor: prof)
end

core_classes_array.each do |course|
    Subject.create(name: course, student_id: Student.all.sample.id, classroom_id: Classroom.all.sample.id)
end