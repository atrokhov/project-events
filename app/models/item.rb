class Item < ApplicationRecord
	has_and_belongs_to_many :primecategories
	has_many :item_categories, :dependent => :destroy
	has_many :categories, :through => :item_categories
	has_many :comments
end
