class Category < ApplicationRecord
	# has_many :subcategories
	has_many :items
	# belongs_to :primecategory
	# has_one :primecategory
end
