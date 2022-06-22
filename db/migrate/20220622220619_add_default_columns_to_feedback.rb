class AddDefaultColumnsToFeedback < ActiveRecord::Migration[5.0]
  def change
    add_reference :feedbacks, :feedbackable, polymorphic: true
    add_column :feedbacks, :score, :integer
    add_column :feedbacks, :comment, :text
  end
end
