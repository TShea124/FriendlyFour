class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :comments
      t.references :teetime
      t.timestamps null: false
    end
  end
end
