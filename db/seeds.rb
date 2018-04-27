# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


prime_category = Primecategory.create(name: 'Cool', description: 'coolest')
category1 = Category.create(name: 'Cool category', description: "cool")
category2 = Category.create(name: 'Not cool category', description: "not cool")
sub_category1 = Subcategory.create(name: 'Cool subcategory', description: "cool")
sub_category2 = Subcategory.create(name: 'Not cool category', description: "not cool")
item = Item.create(name: 'Cool item', description: 'Cool', course: 'Cool course', price_of_course: 100, currency: '$', date: '13.02.2014', description_of_course: "Coolest course", teachers: "Coolest teachers")