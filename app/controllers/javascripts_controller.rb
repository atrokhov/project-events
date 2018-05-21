def dynamic_categories
  @categories = Category.find(:all)
end