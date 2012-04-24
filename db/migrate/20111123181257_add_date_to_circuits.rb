class AddDateToCircuits < ActiveRecord::Migration
  def change
    add_column :circuits, :date, :date
  end
end
