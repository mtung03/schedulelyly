class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :exam_id
      t.string :client_first_name
      t.string :client_last_name
      t.integer :datetime, null: false

      # added a score attribute to each reservation
      t.integer :score

      t.timestamps null: false
    end
  end
end
