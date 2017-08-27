class CreateTeamPlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :team_players do |t|
    	t.integer :team_id,index: true
    	t.integer :player_id,index: true

      t.timestamps
    end
  end
end
