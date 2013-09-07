# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach("/Users/douggerber/Dropbox/work/library/db/books.csv", headers: true) do |row|
	book = {
		title: row[0],
		author: row[1],
		book_id: row[2]
	}

	if Checkout.where(book).empty?
		Checkout.create(book)
	end
end


CSV.foreach("/Users/douggerber/Dropbox/work/library/db/categories.csv", headers: true) do |row|
	cat = {
		name: row[0],
		category_id: row[1]
	}

	if Category.where(cat).empty?
		Category.create(cat)
	end
end
