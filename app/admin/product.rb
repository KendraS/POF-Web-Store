ActiveAdmin.register Product do
  permit_params :product_name, :product_description, :unit_price,
                :retail_price, :stock_quantity, :image, :category_id


end
