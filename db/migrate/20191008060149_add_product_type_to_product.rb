class AddProductTypeToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_type_id, :integer
    add_column :products, :attributes, :text
  end
end
