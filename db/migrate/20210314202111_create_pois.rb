class CreatePois < ActiveRecord::Migration[5.2]
  def change
    create_table :pois do |t|
      t.string :name
      t.string :description
      t.references :region, foreign_key: true
      t.string :location

      t.timestamps
    end
  end
end
