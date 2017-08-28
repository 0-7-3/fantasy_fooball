class Match < ApplicationRecord
	has_many :games, dependent: :destroy, :inverse_of => :match
	belongs_to :match_winner, :foreign_key => 'winner_team_id', class_name: 'Team', optional: true
	accepts_nested_attributes_for :games,:reject_if => :all_blank, :allow_destroy => true
	after_save :update_winner

	def update_winner
		winner_ids = games.collect(&:winner_team_id)
		winner = winner_ids.select{|winner| winner_ids.count(winner) >= 2 }.uniq
		if winner.present?
			self.update_column(:winner_team_id, winner.first)
		else
			self.update_column(:winner_team_id, nil)
		end

	end
	def looser
		winner_ids = games.collect(&:winner_team_id)
		winner_ids.select{|winner| winner_ids.count(winner) > 2 }
	end


end
