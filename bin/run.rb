require_relative '../config/environment.rb'


# s1 = Student.create(name: "Clawdeena", grade: 9)
# s2 = Student.create(name: "Sully", grade: 12)
# s3 = Student.create(name: "Draculaura", grade: 10)

# c1 = Classroom.create(name: "a243", professor: "dr. sexy")
# c2 = Classroom.create(name: "b205", professor: "dr. mcSteamy")

# sub1 = Subject.create(student_id: s1.id, classroom_id: c1.id, name: "Clawculus")
# sub2 = Subject.create(student_id: s2.id, classroom_id: c1.id, name: "Dragonomics")
# sub3 = Subject.create(student_id: s3.id, classroom_id: c2.id, name: "fucking")

data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
# p data

data['professors']
core_classes_array = data['subjects'].first['core_classes']
electives_array = data['subjects'].last['electives']
students_array = data['students']
professors_array = data['professors']




# puts 
# puts data['students']






