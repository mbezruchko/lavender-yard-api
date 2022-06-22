# == Schema Information
#
# Table name: apartment_prices
#
#  id           :integer          not null, primary key
#  ended_at     :datetime
#  price        :decimal(, )
#  started_at   :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#
# Indexes
#
#  index_apartment_prices_on_apartment_id  (apartment_id)
#
# Foreign Keys
#
#  fk_rails_...  (apartment_id => apartments.id)
#
class ApartmentPrice < ApplicationRecord
end
