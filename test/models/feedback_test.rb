# == Schema Information
#
# Table name: feedbacks
#
#  id                :integer          not null, primary key
#  comment           :text
#  feedbackable_type :string
#  score             :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  feedbackable_id   :integer
#
# Indexes
#
#  index_feedbacks_on_feedbackable_type_and_feedbackable_id  (feedbackable_type,feedbackable_id)
#
require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
