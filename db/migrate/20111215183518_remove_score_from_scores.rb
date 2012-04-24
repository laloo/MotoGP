class RemoveScoreFromScores < ActiveRecord::Migration
  def up
  	remove_column :scores, :score
  end

  def down
  	add_column :scores, :score, :integer
  end
end
