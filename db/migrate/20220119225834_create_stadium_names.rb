class CreateStadiumNames < ActiveRecord::Migration[6.1]
  def change
    create_table :stadium_names do |t|
      t.string :name
      t.references :stadium, null: false, foreign_key: true

      t.timestamps
    end
  end
end
