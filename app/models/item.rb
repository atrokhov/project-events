class Item < ApplicationRecord
	has_and_belongs_to_many :primecategories
	has_and_belongs_to_many :categories
end
