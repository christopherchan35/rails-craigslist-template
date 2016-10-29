# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'pathname'

APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

CSV.foreach(APP_ROOT.join("db", "seed_helper.csv")) do |row|
  Category.find_or_create_by(name: row[0])
end
