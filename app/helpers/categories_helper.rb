module CategoriesHelper
	@primecategories = Primecategory.all
	@categories = Category.all
	@related = []

	@primecategories.each do |primecategory|
		@categories.each do |category|
			if primecategory.id == category.primecategory_id
				@related.push category
			end
		end
	end
end
