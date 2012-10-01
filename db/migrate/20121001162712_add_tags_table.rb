class AddTagsTable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      
      t.timestamps
    end
    
    create_table :links_tags, :id => false do |t|
      t.integer :link_id
      t.integer :tag_id
    end
  end
end
