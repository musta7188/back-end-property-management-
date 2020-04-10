class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :message
      t.boolean :isCompleted
      t.integer :property_id

      t.timestamps
    end
  end
end
