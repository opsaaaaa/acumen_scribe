# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create(
  email: 'admin@example.com', 
  password: 'adminadmin',
  name: 'admin'
)
user = User.create(
  email: 'user@example.com', 
  password: 'useruser',
  name: 'user'
)
user.save!
admin.save!

project = Project.create(
  title: 'Initial Project'
)
main_board = Board.create(
  title: 'Main Board'
)

root_branch = Branch.create!(
  name: 'root',
  project: project, 
  board: Board.create!(title: 'project')
)
sub_branch = Branch.create!(
  name: 'Quick Notes',
  project: project,
  board: Board.create!(title: 'quick Notes')
)
sub_branch.move_to_child_of(root_branch)



