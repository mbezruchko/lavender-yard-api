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
class ApplicationSetting < ApplicationRecord
  validates_inclusion_of :singleton_guard, in: [0]
  
  def self.instance
    first_or_create!(singleton_guard: 0)
  end
end
