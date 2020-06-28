class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user, null: false
      t.references :game, null: false
      t.text :game_comment, null: false
      t.timestamps
    end
  end
end
