class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :user_id
      t.integer :trail_id
      t.string :name
      t.float :length
      
      t.timestamps
    end
  end
end
