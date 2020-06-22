class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, null: false
      t.string :game_name, null: false
      t.date :gamestart_datetime, null: false
      t.integer :game_number, null: false
      t.integer :gameball, null: false
      t.references :address, null: false
      t.integer :cost, null: false
      t.string :referee
      t.text :important_point

      t.timestamps
    end
  end
end
