class CreateHikes < ActiveRecord::Migration[7.0]
  def change
    create_table :hikes do |t|
      t.string   :name
      t.boolean  :scramble
      t.integer  :level
      t.string   :state
      t.integer  :length
      t.integer  :elevation_gain_ft
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
