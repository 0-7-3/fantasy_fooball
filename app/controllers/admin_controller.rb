class AdminController < ApplicationController
	before_action :authenticate_user!
	before_filter :is_admin?
		layout 'admin'
	def is_admin?
  	if current_user.admin?
    	true
  	else
   		render :text => "You are not authorised to perform this action", :status => :unauthorized
  	end
  end

	def index
		@total_team = Team.all
		@matches = Match.all
		@games = Game.all
		@top_five = Team.sort_teams.take(5)
	end
end
