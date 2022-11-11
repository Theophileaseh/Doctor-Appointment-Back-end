class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.time :time_of_appointment
      t.date :day_of_appointment
      t.text :message

      t.timestamps
    end
  end
end
