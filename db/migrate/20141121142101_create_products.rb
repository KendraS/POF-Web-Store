class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.decimal :unit_price
      t.decimal :retail_price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end
