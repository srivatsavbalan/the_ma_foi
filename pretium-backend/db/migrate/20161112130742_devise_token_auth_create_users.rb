class DeviseTokenAuthCreateUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :tokens, :json
  end
end
