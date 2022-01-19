class CreateStadiumTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :stadium_teams do |t|
      t.references :stadium, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
