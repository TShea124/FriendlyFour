class CreateTeetimes < ActiveRecord::Migration
  def change
    create_table :teetimes do |t|
    	t.string :time
      t.timestamps null: false
    end
  end
end
