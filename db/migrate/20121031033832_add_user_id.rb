class AddUserId < ActiveRecord::Migration
  def change
    add_column :notes, :user_id, :integer
    add_column :links, :user_id, :integer
  end
end
