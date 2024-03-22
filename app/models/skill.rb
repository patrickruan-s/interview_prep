class Skill < ApplicationRecord
    belongs_to :nba_player
    validates :name, uniqueness: {scope: :nba_player_id}
end