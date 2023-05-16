class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string   :name
      t.integer  :age
      t.integer  :level
      t.boolean  :scramble
      t.integer  :max_distance_mi
      t.integer  :max_elevation_ft

      t.timestamps
    end
  end
end
