class AddDefaultColumnsToApartment < ActiveRecord::Migration[5.0]
  def change
    add_column :apartments, :title, :string
    add_column :apartments, :description, :text
  end
end
