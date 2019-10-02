require_relative '../config/environment.rb'


# data = YAML.load(File.open('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/classes.yml'))
# core_classes_hash = data['subject']['core_classes']
# electives_hash = data['subject']['electives']
# data['subjects']['core_classes'].each do |k, v|
#     puts "#{k}: #{v}"
# end

box = TTY::Box.frame(
    width: 30,
    height: 10,
    align: :center,
    padding: 3
    ) do
    puts 'hello'
end
print box
