class CreateSkillsCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :skills_categories do |t|
      t.string :category_name
    end
    create_table :skills_sub_categories do |t|
      t.string :sub_category_name
      t.integer :skills_category_id
    end
    add_column :skills, :skills_sub_category_id, :integer
  end
end
