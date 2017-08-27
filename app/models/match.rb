class Match < ApplicationRecord
	has_many :games, dependent: :destroy, :inverse_of => :match
	accepts_nested_attributes_for :games,:reject_if => :all_blank, :allow_destroy => true

	def winner
		winner_ids = games.collect(&:winner_team_id)
		winner_ids.select{|winner| winner_ids.count(winner) > 2 }

	end
	def looser
		winner_ids = games.collect(&:winner_team_id)
		winner_ids.select{|winner| winner_ids.count(winner) > 2 }
	end


end
