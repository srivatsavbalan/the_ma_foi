class CreateSavedSearches < ActiveRecord::Migration[5.0]
  def change
    create_table :saved_searches do |t|
      t.integer :user_id
      t.string :name
      t.string :query_string

      t.timestamps
    end
  end
end
