class CreateStadia < ActiveRecord::Migration[6.1]
  def change
    create_table :stadia do |t|
      t.string :address
      t.string :latitude
      t.string :longitude
      t.references :city, null: false, foreign_key: true
      t.integer :year_built
      t.string :wikipedia

      t.timestamps
    end
  end
end
