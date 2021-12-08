class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.references :owner, foreign_key: { to_table: :users }, null: false
      t.timestamps 
    end
  end
end
