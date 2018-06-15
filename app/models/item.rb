class Item < ApplicationRecord
	has_many :primecategories
	has_many :item_categories, dependent: :destroy
	has_many :categories, through: :item_categories
	has_many :comments, dependent: :destroy
end
