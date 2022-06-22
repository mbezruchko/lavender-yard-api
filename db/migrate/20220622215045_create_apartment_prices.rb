class CreateApartmentPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :apartment_prices do |t|

      t.timestamps
    end
  end
end
