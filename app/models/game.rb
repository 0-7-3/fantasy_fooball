class Game < ApplicationRecord
	belongs_to :match, :inverse_of => :games
	validates_presence_of :match
	belongs_to :chalanger_team, :foreign_key => :chalanger_team_id, class_name: 'Team'
	belongs_to :oponent_team, :foreign_key => :oponent_team_id, class_name: 'Team'
	belongs_to :winner_team, :foreign_key => :winner_team_id, class_name: 'Team'

end
