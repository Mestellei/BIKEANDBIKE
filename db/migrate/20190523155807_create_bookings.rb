class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :begining_date
      t.datetime :end_date
      t.integer :total_price
      t.string :status
      t.references :bike, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
