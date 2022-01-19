class CreateCapacities < ActiveRecord::Migration[6.1]
  def change
    create_table :capacities do |t|
      t.references :stadium, null: false, foreign_key: true
      t.integer :year_start
      t.integer :year_end
      t.integer :capacity

      t.timestamps
    end
  end
end
