class CreateMatches < ActiveRecord::Migration[5.0]
  def change
    create_table :matches do |t|
    	t.integer  :winner_team_id
      t.timestamps
    end
  end
end
