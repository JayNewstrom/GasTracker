class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.decimal :cost, precision: 8, scale: 2
      t.decimal :latitude
      t.decimal :longitude
      t.references :grade

      t.timestamps
    end
    add_index :prices, :grade_id
  end
end
