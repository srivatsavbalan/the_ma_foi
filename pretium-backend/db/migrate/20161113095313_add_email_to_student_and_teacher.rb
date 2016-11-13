class AddEmailToStudentAndTeacher < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :email, :string
    add_column :teachers, :email, :string
  end
end
