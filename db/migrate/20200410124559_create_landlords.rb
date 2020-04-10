class CreateLandlords < ActiveRecord::Migration[6.0]
  def change
    create_table :landlords do |t|

      t.timestamps
    end
  end
end
