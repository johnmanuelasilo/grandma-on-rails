class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :user, null: false, foreign_key: true
      t.references :grandma, null: false, foreign_key: true
      t.float :total_price

      t.timestamps
    end
  end
end
