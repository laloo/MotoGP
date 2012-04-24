class CreateCircuits < ActiveRecord::Migration
  def change
    create_table :circuits do |t|
      t.string :name
      t.float :length
      t.string :nationality
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
