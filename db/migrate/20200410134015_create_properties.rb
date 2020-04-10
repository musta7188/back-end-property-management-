class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :address
      t.references :landlord
      t.integer :rooms
      t.string :blueprint

      t.timestamps
    end
  end
end
