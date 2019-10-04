require_relative '../config/environment.rb'

def run
    Catpix.print_image('/Users/flatironstudent/Desktop/projects/guided-module-one-final-project-houston-web-091619/bin/monster_high.jpg')
    $prompt = TTY::Prompt.new
    greet
    menu
    puts 'Goodbye.'
    space
end

def menu
    loop do 
        answer = $prompt.select("Main Menu \n", ['New Student', 'Find Student', 'Students', 'Classrooms', 'Subjects', 'Quit', 'dont click this!!'])
        if answer == 'New Student'
            add_new_student
        elsif answer == 'Find Student'
            find_student
        elsif answer == 'Students'
            get_students
        elsif answer == 'Classrooms'
            get_classrooms
        elsif answer == 'Subjects'
            get_subjects
        elsif answer == 'dont click this!!'
            system("telnet towel.blinkenlights.nl")
        end
        space
        break if answer == 'Quit'
    end
    space(2)
end

# def menu
#     loop do
#         answer = $prompt.select("Main Menu \n", ['New Student', 'Find Student', 'Students', 'Classrooms', 'Subjects', 'Watch Star Wars', 'Quit'])
#         case answer
#         when 'New Student'
#             add_new_student
#         when 'Find Student'
#             find_student
#         when 'Students'
#             get_students
#         when 'Classrooms'
#             get_classrooms
#         when 'Subjects'
#             get_subjects
#         when 'Watch Star Wars'
#         end
#     end
# end


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


def add_new_student
    space
    puts "Great!"
    space(2)
    name = $prompt.ask("What is your name?", default: 'Please enter your name.') do |q|
        q.required true
        q.validate /\A\w+\Z/
    end
    space
    puts "#{name}. very cool"
    space
    grade = $prompt.ask("What grade are you in? (9-12)") 
    space
    puts "#{grade}th grade. Nice"
    Student.create(name: name, grade: grade)
end

# def add_new_student
#     puts "Great!"
#     space
#     student = $prompt.collect do 
#         key(:name).ask("What is your name?")
#         space
#         puts key(:name).value
#     end
# end

def get_students
    space
    student = $prompt.select('Which Student?', Student.names.reverse)
    space
    # puts Student.find_by(name: student).schedule
    # space
    make_box(student)
end

def make_box(student)
    box = TTY::Box.frame(
    width: 35,
    height: 10,
    align: :center,
    padding: 2,
    title: {top_left: 'SCHEDULE', bottom_right: 'MONSTER HIGH'}
    ) do
        Student.find_by(name: student).schedule
    end
    print box
end

def find_student
    space
    student = $prompt.ask("Which student are you looking for?")
    space
    puts "Searching for #{student}"
    space
    loading
    puts "Here is #{student}'s schedule"
    space
    make_box(student)
    space
end

def get_classrooms
    space
    room = $prompt.select('Which Classroom?', Classroom.names)
    space
    puts Classroom.find_by(name:room).professor
    space
end

def get_subjects
    space
    subject = $prompt.select('Which subject?', Subject.names)
    space(2)
    thing = Subject.find_by(name: subject).description
    box = TTY::Box.frame(
    width: 50,
    height: (thing.length / 20) + 5,
    align: :left,
    padding: 2,
    title: {top_left: 'SUBJECT', bottom_right: 'MONSTER HIGH'}
    ) do
        "   #{thing}"
    end
    print box
end

def loading
    cursor = TTY::Cursor
    print '['
    (0...51).each do |i|
        a = 52 - i
        print "#"
        print cursor.move(a,0)
        percent = "#{i*2}%"
        print percent
        print cursor.move(-a-percent.length,0)
        sleep(0.05)
    end
    print ']'
    space(2)
end






