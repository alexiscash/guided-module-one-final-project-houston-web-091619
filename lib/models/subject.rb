class Subject < ActiveRecord::Base
    belongs_to :student
    belongs_to :classroom

    def self.names
        self.all.map do |i|
            i.name
        end
    end
end