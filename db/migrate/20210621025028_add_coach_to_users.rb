class AddCoachToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :coach, :boolean, null: false, default: false
  end
end
