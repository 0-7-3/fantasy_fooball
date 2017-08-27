class AddMatchIdToGames < ActiveRecord::Migration[5.0]
  def change
  		add_column :games,:match_id, :integer,  index: true
  end
end
