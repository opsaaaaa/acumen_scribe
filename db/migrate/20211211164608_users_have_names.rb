class UsersHaveNames < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.string :name, null: false
    end
  end
end
