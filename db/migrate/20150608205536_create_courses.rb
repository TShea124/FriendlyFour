class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :classification
      t.string :price
      t.string :img
      t.timestamps null: false
    end
  end
end
