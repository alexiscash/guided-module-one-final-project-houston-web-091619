require_relative '../config/environment.rb'

def run
    # Catpix.print_image('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/monster_high.jpg')
    $prompt = TTY::Prompt.new
    greet
    menu
    puts 'Goodbye.'
end

def menu
    loop do 
        answer = $prompt.select('Main Menu', %w(New_Student Find_Student Students Classrooms Subjects Quit))
        if answer == 'New_Student'
            add_new_user
        elsif answer == 'Students'
            get_students
        elsif answer == 'Classrooms'
            get_classrooms
            # $prompt.select('Which Classroom?', Classroom.names)
        elsif answer == 'Subjects'
            get_subjects
            # $prompt.select('Which subject?', Subject.names)
        end
        break if answer == 'Quit'
    end
end

def greet
    space
    puts "Hello!"
    sleep(0.5)
    space
    puts "Welcome to Monster High!"
    sleep(1)
    space(2)
    puts "What would you like to do?"
    space(2)
end

def space(num = 1)
    num.times do |i|
        puts
    end
end


def add_new_user
    puts "Great!"
    space(2)
    name = $prompt.ask("What is your name?")
    space
    puts "#{name}. very cool"
    grade = $prompt.ask("What grade are you in? (integer)")
    space
    puts "#{grade}. Nice"
    Student.create(name: name, grade: grade)
end

def get_students
    space
    student = $prompt.select('Which Student?', Student.names.reverse)
    space
    # puts Student.find_by(name: student).schedule
    # space
    box = TTY::Box.frame(
    width: 30,
    height: 10,
    align: :center,
    padding: 2,
    title: {top_left: 'SCHEDULE', bottom_right: 'ayyy'}
    ) do
        Student.find_by(name: student).schedule
    end
    print box
end

def find_student
    space
end

def get_classrooms
    room = $prompt.select('Which Classroom?', Classroom.names)
    puts Classroom.find_by(name:room).prof
end

def get_subjects
end






