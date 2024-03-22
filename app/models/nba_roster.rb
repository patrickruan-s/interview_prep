class NbaRoster < ApplicationRecord
    validates :name, presence: true

    has_many :nba_player_rosters
    has_many :nba_players, through: :nba_player_rosters
end