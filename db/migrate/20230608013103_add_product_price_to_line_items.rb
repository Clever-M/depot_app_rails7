class AddProductPriceToLineItems < ActiveRecord::Migration[7.0]
  def change
    add_column :line_items, :product_price, :decimal
  end
end
