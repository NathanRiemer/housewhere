class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :container_type
      t.string :location
      t.string :description
      t.references :room, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
