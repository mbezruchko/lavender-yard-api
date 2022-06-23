class CreateApplicationSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :application_settings do |t|
      t.integer :singleton_guard
      t.string :email
      t.string :phone_main
      t.string :phone_additional

      t.timestamps
    end
    add_index :application_settings, :singleton_guard, unique: true
  end
end
