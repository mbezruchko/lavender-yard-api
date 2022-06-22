class AddDefaultColumnsToBook < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :apartment, foreign_key: true
    add_column :books, :started_at, :datetime
    add_column :books, :ended_at, :datetime
    add_reference :books, :user, foreign_key: true
    add_column :books, :user_comment, :text
    add_column :books, :user_phone, :string
    add_column :books, :user_email, :string
  end
end
