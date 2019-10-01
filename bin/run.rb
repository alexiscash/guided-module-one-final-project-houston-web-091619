require_relative '../config/environment.rb'

def run
    loop do 
        prompt = TTY::Prompt.new
        answer = prompt.select('tf you want', %w(students classrooms subjects quit))
        if answer == 'students'
            p Student.all
        elsif answer == 'classrooms'
            p Classroom.all
        elsif answer == 'subjects'
            p Subject.all
        end
        break if answer == 'quit'
    end
end






