class NbaPlayer < ApplicationRecord
    validates :name, presence: true

    has_many :nba_player_rosters
    has_many :nba_rosters, through: :nba_player_rosters

    has_many :skills
end