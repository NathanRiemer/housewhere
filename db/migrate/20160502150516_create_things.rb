class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.string :description
      t.integer :quantity
      t.string :category
      t.string :location
      t.references :container, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
