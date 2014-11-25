ActiveAdmin.register Product do
  permit_params :product_name, :product_description, :unit_price,
                :retail_price, :stock_quantity, :image, :category_id

  form(:html => { :multipart => true }) do |f|
    f.inputs "Product Details" do
      f.input :product_name
      f.input :product_description
      f.input :unit_price
      f.input :retail_price
      f.input :stock_quantity
      f.input :image
      f.input :category_id
    end
    f.actions
  end

end
