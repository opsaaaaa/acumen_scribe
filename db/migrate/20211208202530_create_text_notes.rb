class CreateTextNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :text_notes do |t|
      t.text :body
      t.integer :order
      t.string :size
      t.string :color
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
