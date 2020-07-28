class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :user, null: false
      t.string :game_name, null: false
      t.datetime :gamestart_datetime, null: false
      t.datetime :gameend_datetime, null: false
      t.integer :gameball, null: false
      t.integer :cost, null: false
      t.string :referee
      t.text :important_point

      t.timestamps
    end
  end
end
