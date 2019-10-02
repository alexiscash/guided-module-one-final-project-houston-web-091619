class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :student_id
      t.integer :classroom_id
    end
  end
end
