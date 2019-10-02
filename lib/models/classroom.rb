class Classroom < ActiveRecord::Base
    has_many :subjects
    has_many :students, through: :subjects

    def self.names
        self.all.map do |i|
            i.name 
        end
    end
end