class AddTeamAssociation < ActiveRecord::Migration[5.0]
  def change
  	add_column :games,:chalanger_team_id, :integer, index: true
  	add_column :games,:oponent_team_id, :integer, index: true
  	add_column :games,:winner_team_id, :integer, index: true
  end
end
