class AddRatingsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :ratings, :integer
  end
end
