# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  ended_at     :datetime
#  started_at   :datetime
#  user_comment :text
#  user_email   :string
#  user_phone   :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  apartment_id :integer
#  user_id      :integer
#
# Indexes
#
#  index_books_on_apartment_id  (apartment_id)
#  index_books_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (apartment_id => apartments.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
