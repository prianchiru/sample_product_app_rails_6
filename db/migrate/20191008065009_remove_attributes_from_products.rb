class RemoveAttributesFromProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :attributes, :text
  end
end
