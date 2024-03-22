class CreateNbaPlayers < ActiveRecord::Migration[7.1]
  def change
    create_table :nba_players do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
