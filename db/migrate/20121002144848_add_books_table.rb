class AddBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      
      t.timestamps
    end
    
    create_table :books_tags, :id => false do |t|
      t.integer :book_id
      t.integer :tag_id
    end
  end
end
