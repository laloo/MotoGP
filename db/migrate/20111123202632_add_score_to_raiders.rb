class AddScoreToRaiders < ActiveRecord::Migration
  def change
    add_column :riders, :score, :int
  end
end
