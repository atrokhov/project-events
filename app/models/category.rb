class Category < ApplicationRecord
	has_many :subcategories
	has_many :items
	has_one :primecategory
end
