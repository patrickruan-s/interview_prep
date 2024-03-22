class CreateNbaRosters < ActiveRecord::Migration[7.1]
  def change
    create_table :nba_rosters do |t|
      t.string :name
      t.integer :salary_cap

      t.timestamps
    end
  end
end
