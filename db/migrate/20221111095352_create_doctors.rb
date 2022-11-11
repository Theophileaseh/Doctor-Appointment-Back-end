class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :photo
      t.string :specialty
      t.string :bio

      t.timestamps
    end
  end
end
