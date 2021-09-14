class CreateVaccinationLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :vaccination_logs do |t|
      t.integer :my_number,                null: false
      t.string :manufacturer,              null: false
      t.integer :lot_number,               null: false
      t.datetime :vaccination_date,        null: false
      t.integer :vaccination_times,        null: false
      t.timestamps
    end
  end
end
