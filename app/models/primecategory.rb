class Primecategory < ApplicationRecord
	has_many :categories
	has_many :subcategories
	has_many :items
end
