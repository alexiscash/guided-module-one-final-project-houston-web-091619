require_relative '../config/environment.rb'

# dont look at this

# it's all a bunch of crap



data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))

core_classes_hash = data["subjects"]["core classes"]
electives_hash = data["subjects"]["electives"]
classrooms_hash = data["classrooms"]
classrooms_hash['core classrooms'].each do |k,v|
    puts "#{k}, #{v}"
end

# data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
# core_classes_hash = data['subject']['core_classes']
# electives_hash = data['subject']['electives']
# data['subjects']['core_classes'].each do |k, v|
#     puts "#{k}: #{v}"
# end

# box = TTY::Box.frame(
#     width: 30,
#     height: 10,
#     align: :center,
#     padding: 3
#     ) do
#     puts 'hello'
# end
# print box
# cursor = TTY::Cursor
# print '['
# 50.times do |i|
#     print '#'
#     sleep(0.01)
# end
# puts

# print ' ] 99%'
# sleep(20)
# print "done"
# puts

# print '#'
# print cursor.move(50,0)
# print '100%'
# puts

# print '['
# (0...51).each do |i|
#     a = 52 - i
#     print "#"
#     print cursor.move(a,0)
#     percent = "#{i*2}%"
#     print percent
#     print cursor.move(-a-percent.length,0)
#     sleep(0.05)
# end
# print ']'
# puts

# system("telnet towel.blinkenlights.nl")

