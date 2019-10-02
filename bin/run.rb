require_relative '../config/environment.rb'

def run
    Catpix.print_image('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/monster_high.jpg')
    $prompt = TTY::Prompt.new
    greet
    loop do 
        answer = $prompt.select('Main Menu', %w(New_Student Students Classrooms Subjects Quit))
        if answer == 'New_Student'
            add_new_user
        elsif answer == 'Students'
            $prompt.select('which student', Student.names)
        elsif answer == 'Classrooms'
            $prompt.select('Which Classroom?', Classroom.names)
        elsif answer == 'Subjects'
            $prompt.select('Which subject?', Subject.names)
        end
        break if answer == 'Quit'
    end
    puts 'Goodbye you bitch'
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
    grade = $prompt.ask("What grade are you in?")
    space
    puts "#{grade}. Nice"
    Student.create(name: name, grade: grade)
end









