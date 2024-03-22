class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :name, null: false
      t.float :experience
      t.references :nba_player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
