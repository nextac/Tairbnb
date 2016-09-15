class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :location
      t.text :description
      t.string :photo
      t.timestamps null: false
    end
  end
end
