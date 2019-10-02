class Student < ActiveRecord::Base
    has_many :subjects
    has_many :classrooms, through: :subjects


    def self.names
        self.all.map do |i|
            i.name
        end
    end

    def schedule
        arr = []
        4.times do |i|
            arr << "#{Subject.all.sample.name} #{self.grade_suffix(self.grade)}"
        end
        arr.to_s
    end

    def grade_suffix(grade)
        if grade == 9
            'I'
        elsif grade == 10
            'II'
        elsif grade == 11
            'III'
        elsif grade == 12
            'IV'
        end
    end
end