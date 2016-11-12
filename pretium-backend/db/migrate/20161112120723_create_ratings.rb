class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.integer :student_id
      t.integer :skill_id
      t.integer :teacher_id
      t.integer :rating

      t.timestamps
    end
  end
end
