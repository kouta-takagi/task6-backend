# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

user = User.create(name: "kouta", email: "a@example.com")

user.todos.create(title: '洗濯', description: '迅速に', is_finished: true)
user.todos.create(title: '皿洗い', description: '丁寧に', is_finished: true)
user.todos.create(title: '料理', description: '唐揚げ', is_finished: true)
user.todos.create(title: '買い物', is_finished: true)
user.todos.create(title: '宿題', description: '数学', is_finished: false)
