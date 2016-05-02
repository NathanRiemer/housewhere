class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :street_address_1
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
