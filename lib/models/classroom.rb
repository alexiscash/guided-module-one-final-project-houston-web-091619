class Classroom < ActiveRecord::Base
    has_many :subjects
    has_many :students, through: :subjects
end