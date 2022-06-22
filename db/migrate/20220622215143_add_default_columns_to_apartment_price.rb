class AddDefaultColumnsToApartmentPrice < ActiveRecord::Migration[5.0]
  def change
    add_reference :apartment_prices, :apartment, foreign_key: true
    add_column :apartment_prices, :price, :decimal
    add_column :apartment_prices, :started_at, :datetime
    add_column :apartment_prices, :ended_at, :datetime
  end
end
