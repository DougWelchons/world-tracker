class CreateKingdoms < ActiveRecord::Migration[5.2]
  def change
    create_table :kingdoms do |t|
      t.string :name
      t.string :description
      t.string :location
      t.references :continent, foreign_key: true

      t.timestamps
    end
  end
end
