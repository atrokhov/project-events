class Category < ApplicationRecord
	belongs_to :primecategory
	has_one :primecategory
end
