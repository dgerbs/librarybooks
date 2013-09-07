class AddFavoriteFieldToBooks < ActiveRecord::Migration
  # def change
  #   add_column :books, :favorite, :boolean
  # end

  def up
  	add_column :books, :favorite, :boolean
  end

  def
  	remove_column :books, :favorite, :boolean
end
