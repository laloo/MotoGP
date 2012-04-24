class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :rider_id
      t.integer :circuit_id
      t.integer :position
      t.integer :score

      t.timestamps
    end
  end
end
