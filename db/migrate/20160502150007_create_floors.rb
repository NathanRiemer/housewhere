class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :floor_number
      t.references :home, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
