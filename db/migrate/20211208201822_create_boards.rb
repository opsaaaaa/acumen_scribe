class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :title

      t.timestamps
    end
    change_table :branches do |t|
      t.references :board, null: false, foreign_key: true
    end
  end
end
