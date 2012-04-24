class CreateRiders < ActiveRecord::Migration
  def change
    create_table :riders do |t|
      t.string :name
      t.string :surnanme
      t.date :date_of_birth
      t.string :nationality

      t.timestamps
    end
  end
end
