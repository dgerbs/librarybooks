class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :title
      t.string :author
      t.integer :book_id

      t.timestamps
    end
  end
end
