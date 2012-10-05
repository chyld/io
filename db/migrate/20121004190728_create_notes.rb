class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :info
      t.timestamps
    end
    
    create_table :notes_tags, :id => false do |t|
      t.integer :note_id
      t.integer :tag_id
    end
  end
end
