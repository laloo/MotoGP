class FixColumnNameOnRiders < ActiveRecord::Migration
  def up
  	rename_column :riders, :surnanme, :surname
  end

  def down
  	rename_column :riders, :surname, :surnanme
  end
end
