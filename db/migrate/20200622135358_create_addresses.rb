class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :game, null: false
      t.integer :postal_code
      t.string :prefectures, null: false
      t.string :municipality, null: false
      t.string :building, null: false
      t.string :house_number, null: false
      t.timestamps
    end
  end
end
