class CreateRoute < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.string :name
      t.integer :length
    end
  end
end
