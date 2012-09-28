class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.text :dates

      t.timestamps
    end
  end
end
