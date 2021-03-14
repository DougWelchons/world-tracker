class CreateRegions < ActiveRecord::Migration[5.2]
  def change
    create_table :regions do |t|
      t.string :name
      t.string :description
      t.string :location
      t.references :kingdom, foreign_key: true
      t.string :biome

      t.timestamps
    end
  end
end
