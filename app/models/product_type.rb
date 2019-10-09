class ProductType < ApplicationRecord
    has_many :product_fields
    accepts_nested_attributes_for :product_fields, allow_destroy: true
end
