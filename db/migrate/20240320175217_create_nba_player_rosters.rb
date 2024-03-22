class CreateNbaPlayerRosters < ActiveRecord::Migration[7.1]
  def change
    create_table :nba_player_rosters do |t|
      t.references :nba_roster, null: false, foreign_key: true
      t.references :nba_player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
