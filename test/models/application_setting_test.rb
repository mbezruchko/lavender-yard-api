# == Schema Information
#
# Table name: application_settings
#
#  id               :integer          not null, primary key
#  email            :string
#  phone_additional :string
#  phone_main       :string
#  singleton_guard  :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_application_settings_on_singleton_guard  (singleton_guard) UNIQUE
#
require 'test_helper'

class ApplicationSettingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
