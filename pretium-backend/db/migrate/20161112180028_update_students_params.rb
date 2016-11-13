class UpdateStudentsParams < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :dob, :string
    add_column :students, :gender, :string
    add_column :students, :nationality, :string
    add_column :students, :address, :string
    add_column :students, :father_name, :string
    add_column :students, :mother_name, :string
    add_column :students, :spouse_name, :string
    add_column :students, :primary_school, :string
    add_column :students, :secondary_school, :string
    add_column :students, :senior_secondary_school, :string
    add_column :students, :higher_secondary_school, :string
    add_column :teachers, :higher_secondary_school, :string
    add_column :students, :graduation, :string
    add_column :students, :post_graduation, :string
    add_column :students, :co_curricular, :string
    add_column :students, :extra_curricular, :string
    add_column :students, :archivements, :string
  end
end
