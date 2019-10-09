class Product < ApplicationRecord
    belongs_to :Product_types, optional: true
    serialize :product_properties, Hash
end
