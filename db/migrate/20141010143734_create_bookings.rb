class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :project, index: true
      t.text :title
      t.timestamp :started
      t.timestamp :ended

      t.timestamps
    end
  end
end
