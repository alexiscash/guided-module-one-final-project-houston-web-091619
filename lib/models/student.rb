class Student < ActiveRecord::Base
    has_many :subjects
    has_many :classrooms, through: :subjects
end