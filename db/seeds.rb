# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create(name: "admin", surname: "root", sex: "Мужской", admin: true, moderator: false, email: "admin@project.com", password: "123456", password_confirmation: "123456")
moderator = User.create(name: "moderator", surname: "root", sex: "Мужской", admin: false, moderator: true, email: "moderator@project.com", password: "123456", password_confirmation: "123456")
user = User.create(name: "user", surname: "root", sex: "Мужской", admin: false, moderator: false, email: "user@project.com", password: "123456", password_confirmation: "123456")