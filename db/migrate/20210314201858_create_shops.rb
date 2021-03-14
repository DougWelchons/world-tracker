class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :description
      t.references :district, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
