class UpdateTeacherParams < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :review
    add_column :ratings, :review, :string
    add_column :teachers, :designation, :string
    add_column :teachers, :dob, :string
    add_column :teachers, :gender, :string
    add_column :teachers, :nationality, :string
    add_column :teachers, :marital_status, :string
    add_column :teachers, :spouse_name, :string
    add_column :teachers, :address, :string
    add_column :teachers, :contact_number, :string
    add_column :teachers, :secondary_school, :string
    add_column :teachers, :senior_secondary_school, :string
    add_column :teachers, :graduation, :string
    add_column :teachers, :post_graduation, :string
  end
end
