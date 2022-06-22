# == Schema Information
#
# Table name: images
#
#  id            :integer          not null, primary key
#  imagable_type :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  imagable_id   :integer
#
# Indexes
#
#  index_images_on_imagable_type_and_imagable_id  (imagable_type,imagable_id)
#
require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
