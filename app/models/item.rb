class Item < ApplicationRecord
	has_many :primecategories
	has_many :categories
	has_many :subcategories
end
