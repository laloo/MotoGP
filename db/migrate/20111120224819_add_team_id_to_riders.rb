class AddTeamIdToRiders < ActiveRecord::Migration
  def change
    add_column :riders, :team_id, :integer
  end
end
