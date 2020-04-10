class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.integer :property_id
      t.string :message
      t.integer :priority
      t.boolean :isCompleted
      t.integer :tenant_id

      t.timestamps
    end
  end
end
