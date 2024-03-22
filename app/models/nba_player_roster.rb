class NbaPlayerRoster < ApplicationRecord
    belongs_to :nba_roster
    belongs_to :nba_player

    validates :nba_player_id, uniqueness: {scope: :nba_roster_id}
end