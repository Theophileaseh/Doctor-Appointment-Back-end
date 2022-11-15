class AddUserIdToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :user_id, :integer
    add_reference :doctors, :user, null: false, foreign_key: true
  end
end
