class CreateIssues < ActiveRecord::Migration[6.0]
  def change
    create_table :issues do |t|
      t.references :property, null: false, foreign_key: true
      t.string :message
      t.integer :priority
      t.boolean :isCompleted
      t.references :tenant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
