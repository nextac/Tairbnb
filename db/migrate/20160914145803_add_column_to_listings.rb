class AddColumnToListings < ActiveRecord::Migration

  def change
    add_column :listings, :rooms, :integer
  end
end
