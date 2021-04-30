class AddColumnContinents < ActiveRecord::Migration[5.2]
  def change
    add_reference :continents, :campaign, foreign_key: true
  end
end
