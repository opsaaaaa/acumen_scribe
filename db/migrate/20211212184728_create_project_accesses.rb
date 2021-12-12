class CreateProjectAccesses < ActiveRecord::Migration[6.1]
  def change
    create_table :project_accesses do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.integer :access

      t.timestamps
    end
  end
end
