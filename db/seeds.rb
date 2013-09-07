# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach("db/books", headers: true) do |row|
	title = row[0]
	author = row[1]
	genre = row[2]
	year = row[3]
	book.title = title
	book.author = author
	book.genre = genre
	book.year = year
end


# title,author,genre,year
# apple,washington,mystery,1801
# orange,clementine,drama,1923
# cherry,lambert,scifi,2002
# grape,concord,fiction,1957
