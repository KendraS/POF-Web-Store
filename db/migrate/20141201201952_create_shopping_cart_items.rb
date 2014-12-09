class CreateShoppingCartItems < ActiveRecord::Migration
  def change
    create_table :shopping_cart_items do |t|
    t.shopping_cart_items_fields # Creates the cart items fields
    t.timestamps
    end
  end
end
