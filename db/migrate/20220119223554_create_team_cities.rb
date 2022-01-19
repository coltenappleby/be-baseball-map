class CreateTeamCities < ActiveRecord::Migration[6.1]
  def change
    create_table :team_cities do |t|
      t.references :city, null: false, foreign_key: true
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
