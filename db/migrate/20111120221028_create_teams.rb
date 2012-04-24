class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :colors
      t.string :nationality

      t.timestamps
    end
  end
end
