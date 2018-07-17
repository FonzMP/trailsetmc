class CreateRides < ActiveRecord::Migration[5.2]
  def change
    create_table :rides do |t|
      t.integer :user_id
      t.integer :route_id
      t.string :name
      t.integer :length
      
      t.timestamps
    end
  end
end
