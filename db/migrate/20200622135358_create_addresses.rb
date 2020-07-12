class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.references :game, foreign_key: true
      t.string :baseball_park, null: false
      t.string :prefectures, null: false
      t.string :municipality, null: false
      t.string :building, null: false
      t.string :house_number, null: false
      t.timestamps
    end
  end
end
