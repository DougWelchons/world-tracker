class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.references :kingdom, foreign_key: true
      t.string :description

      t.timestamps
    end
  end
end
