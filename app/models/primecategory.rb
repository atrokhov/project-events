class Primecategory < ApplicationRecord
	has_many :categories
	has_many :items
end
