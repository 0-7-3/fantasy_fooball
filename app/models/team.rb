class Team < ApplicationRecord
	has_many :team_players, dependent: :destroy
	has_many :players , through: :team_players
	has_many :chalanger_games, class_name: 'Game', foreign_key: 'chalanger_team_id'
  has_many :oponent_team, class_name: 'Game', foreign_key: 'oponent_team_id'
  has_many :wins, class_name: 'Game', foreign_key: 'winner_team_id'
	accepts_nested_attributes_for :players,:reject_if => :all_blank, :allow_destroy => true
end
