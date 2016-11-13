class CreateRequestRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :request_ratings do |t|
      t.integer :student_id
      t.integer :skill_id
      t.integer :teacher_id
      t.string :status

      t.timestamps
    end
  end
end
