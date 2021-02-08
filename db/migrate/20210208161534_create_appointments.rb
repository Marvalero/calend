class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.string :type
      t.text :comment

      t.timestamps
    end
  end
end
