class CopyProductPriceIntoLineItem < ActiveRecord::Migration[7.0]
  def up
    LineItem.all.each do |line_item|
      line_item.update(product_price: line_item.product.price)
    end
  end

  def down
    LineItem.all.each do |line_item|
      line_item.update(product_price: nil)
    end
  end
end
