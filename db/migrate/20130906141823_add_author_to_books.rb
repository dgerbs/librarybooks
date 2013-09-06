class AddAuthorToBooks < ActiveRecord::Migration
  def change
  end

  def up
  	add_column :author
  end

  def down
  	remove_column :author
  end
end
