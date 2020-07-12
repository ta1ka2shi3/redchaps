class AddUserRefToGames < ActiveRecord::Migration[5.2]
  def change
    add_reference :games, :address, foreign_key: true
  end
end
